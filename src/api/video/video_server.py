import cv2
import imagezmq
import threading
import time
import json
import numpy as np

class VideoServer:
    """
    VideoServer is responsible for receiving and processing video streams from multiple
    clients. It handles both RGB and RGB-D streams, allows for dynamic frame access
    and recording functionality, and manages bandwidth by controlling which streams
    are actively being sent by the client. It can also send parameter settings to the client.
    """

    def __init__(self, port: int=5555):
        """
        Initializes the VideoServer.

        Args:
            port (int): Port number to listen on for incoming video streams.
        """
        self.image_hub = imagezmq.ImageHub(open_port=f'tcp://*:{port}')
        self.running = False
        self.thread = None
        self.lock = threading.Lock()
        self.frame_generators = {}
        self.record = {}
        self.out = {}

    def start_stream(self):
        """
        Starts the server to begin receiving and processing video streams.
        """
        if not self.running:
            self.thread = threading.Thread(target=self._stream)
            self.running = True
            self.thread.start()

    def stop_stream(self):
        """
        Stops the server from receiving and processing video streams.
        """
        self.running = False
        if self.thread:
            self.thread.join()

    def _stream(self):
        """
        Main loop for receiving and processing video streams from clients.
        """
        while self.running:
            try:
                cam_id, data = self.image_hub.recv_image()
            except imagezmq.ImageHubError:
                time.sleep(0.1)
                continue

            # Check if the received data is RGB or RGB-D
            if isinstance(data, dict) and 'color' in data and 'depth' in data:
                color_image = data['color']
                depth_image = data['depth']
                # Store RGB-D stream in the frame_generators dictionary
                if cam_id not in self.frame_generators:
                    self.frame_generators[cam_id] = {"rgbd": None, "rgb": None}
                self.frame_generators[cam_id]["rgbd"] = (color_image, depth_image)

                # Handle recording of RGB-D streams
                with self.lock:
                    if cam_id in self.record and self.record[cam_id] and self.out[cam_id]:
                        self.out[cam_id].write(color_image)

            else:
                # Store RGB stream in the frame_generators dictionary
                if cam_id not in self.frame_generators:
                    self.frame_generators[cam_id] = {"rgbd": None, "rgb": None}
                self.frame_generators[cam_id]["rgb"] = data

                # Handle recording of RGB streams
                with self.lock:
                    if cam_id in self.record and self.record[cam_id] and self.out[cam_id]:
                        self.out[cam_id].write(data)

            self.image_hub.send_reply(b'OK')

    def add_frame_generator(self, cam_id, stream_type="rgb"):
        """
        Adds a frame generator for the specified camera ID and requests the stream from the client.

        Args:
            cam_id (str): The camera ID for which to add the frame generator.
            stream_type (str): The type of stream to request ("rgb" or "rgbd").
        """
        if cam_id not in self.frame_generators:
            self.frame_generators[cam_id] = {"rgbd": None, "rgb": None}

        # Send a control message to the client to start streaming
        control_msg = {"command": "start_stream", "stream_type": stream_type}
        self.image_hub.send_reply(json.dumps(control_msg).encode())

    def remove_frame_generator(self, cam_id, stream_type="rgb"):
        """
        Removes the frame generator for the specified camera ID and stops the stream from the client.

        Args:
            cam_id (str): The camera ID for which to remove the frame generator.
            stream_type (str): The type of stream to stop ("rgb" or "rgbd").
        """
        if cam_id in self.frame_generators:
            del self.frame_generators[cam_id]

        # Send a control message to the client to stop streaming
        control_msg = {"command": "stop_stream", "stream_type": stream_type}
        self.image_hub.send_reply(json.dumps(control_msg).encode())

    def set_parameters(self, cam_id, params, stream_type="rgb"):
        """
        Sends a control message to the client to set parameters on the RGB or RGB-D stream.

        Args:
            cam_id (str): The camera ID for which to set the parameters.
            params (dict): The parameters to set on the camera.
            stream_type (str): The type of stream to apply the parameters to ("rgb" or "rgbd").
        """
        control_msg = {"command": "set_parameters", "params": params, "stream_type": stream_type}
        self.image_hub.send_reply(json.dumps(control_msg).encode())

    def frame_generator(self, cam_id, stream_type="rgb"):
        """
        Generator for accessing frames from the specified camera stream.

        Args:
            cam_id (str): The camera ID from which to access frames.
            stream_type (str): The type of stream to access ("rgb" or "rgbd").

        Yields:
            np.array: The next frame from the specified stream.
        """
        self.add_frame_generator(cam_id, stream_type)
        while self.running:
            try:
                if stream_type == "rgbd":
                    if cam_id in self.frame_generators and self.frame_generators[cam_id]["rgbd"] is not None:
                        yield self.frame_generators[cam_id]["rgbd"]
                else:
                    if cam_id in self.frame_generators and self.frame_generators[cam_id]["rgb"] is not None:
                        yield self.frame_generators[cam_id]["rgb"]
            except imagezmq.ImageHubError:
                time.sleep(0.1)
                continue
        self.remove_frame_generator(cam_id, stream_type)

    def start_recording(self, cam_id, output_file, fps=20.0, width=640, height=480):
        """
        Starts recording the video stream from the specified camera ID.

        Args:
            cam_id (str): The camera ID from which to start recording.
            output_file (str): The file path where the video will be saved.
            fps (float): Frames per second for the recorded video.
            width (int): Width of the video frame.
            height (int): Height of the video frame.
        """
        with self.lock:
            if cam_id not in self.record:
                self.record[cam_id] = False
                self.out[cam_id] = None

            if self.record[cam_id] and self.out[cam_id]:
                self.out[cam_id].release()
            fourcc = cv2.VideoWriter_fourcc(*'XVID')
            self.out[cam_id] = cv2.VideoWriter(output_file, fourcc, fps, (width, height))
            self.record[cam_id] = True

    def stop_recording(self, cam_id):
        """
        Stops recording the video stream from the specified camera ID.

        Args:
            cam_id (str): The camera ID from which to stop recording.
        """
        with self.lock:
            if cam_id in self.record and self.record[cam_id] and self.out[cam_id]:
                self.out[cam_id].release()
            self.record[cam_id] = False
