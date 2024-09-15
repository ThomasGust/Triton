import cv2
import imagezmq
import threading
import time
import pyrealsense2 as rs
import numpy as np
import json

class VideoClient:
    """
    VideoClient is responsible for capturing and streaming video data from both regular RGB cameras
    and an RGB-D camera (if available) to a server. It can handle multiple RGB cameras simultaneously,
    and allows for dynamic adjustment of camera parameters. Streams are dynamically started and stopped
    based on control messages from the server.

    Attributes:
        sender (imagezmq.ImageSender): Object responsible for sending images to the server.
        use_rgbd (bool): Flag indicating if an RGB-D camera is being used.
        pipeline (rs.pipeline): The RealSense pipeline for the RGB-D camera.
        pipeline_profile (rs.pipeline_profile): The RealSense pipeline profile, used for setting options.
        running_rgbd (bool): Flag indicating if the RGB-D streaming is running.
        thread_rgbd (threading.Thread): Thread handling the RGB-D stream.
        caps (dict): Dictionary of cv2.VideoCapture objects for each RGB camera.
        running (dict): Dictionary indicating if each RGB camera is currently streaming.
        threads (dict): Dictionary of threads handling each RGB camera's stream.
        lock (threading.Lock): Lock for thread-safe operations on shared resources.
    """

    def __init__(self, server_ip, server_port, camera_indices=None, use_rgbd=False):
        """
        Initializes the VideoClient.

        Args:
            server_ip (str): IP address of the server to connect to.
            server_port (int): Port number of the server to connect to.
            camera_indices (list): List of indices for the RGB cameras to be used.
            use_rgbd (bool): Flag indicating if an RGB-D camera will be used.
        """
        self.sender = imagezmq.ImageSender(connect_to=f'tcp://{server_ip}:{server_port}')
        self.use_rgbd = use_rgbd

        if self.use_rgbd:
            # Configure RealSense pipeline to stream RGB and Depth
            self.pipeline = rs.pipeline()
            config = rs.config()
            config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 30)
            config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)
            self.pipeline_profile = self.pipeline.start(config)
            self.running_rgbd = False
            self.thread_rgbd = None
        else:
            print("RGB-D camera not available. Only streaming RGB streams.")
        
        self.caps = {idx: cv2.VideoCapture(idx) for idx in camera_indices}
        self.running = {idx: False for idx in camera_indices}
        self.threads = {}
        self.lock = threading.Lock()

    def start_stream(self, camera_index=None):
        """
        Starts streaming from the specified RGB camera or the RGB-D camera.

        Args:
            camera_index (int, optional): Index of the RGB camera to start streaming. If None, starts the RGB-D stream.
        """
        if self.use_rgbd and not self.running_rgbd:
            self.thread_rgbd = threading.Thread(target=self._stream_rgbd)
            self.running_rgbd = True
            self.thread_rgbd.start()

        if camera_index in self.caps and not self.running[camera_index]:
            self.threads[camera_index] = threading.Thread(target=self._stream, args=(camera_index,))
            self.running[camera_index] = True
            self.threads[camera_index].start()

    def stop_stream(self, camera_index=None):
        """
        Stops streaming from the specified RGB camera or the RGB-D camera.

        Args:
            camera_index (int, optional): Index of the RGB camera to stop streaming. If None, stops the RGB-D stream.
        """
        if self.use_rgbd and self.running_rgbd:
            self.running_rgbd = False
            if self.thread_rgbd:
                self.thread_rgbd.join()

        if camera_index in self.caps and self.running[camera_index]:
            self.running[camera_index] = False
            if self.threads[camera_index]:
                self.threads[camera_index].join()

    def _stream(self, camera_index):
        """
        Handles the streaming of a single RGB camera.

        Args:
            camera_index (int): Index of the RGB camera to stream.
        """
        cap = self.caps[camera_index]
        while self.running[camera_index]:
            ret, frame = cap.read()
            if not ret:
                time.sleep(0.1)
                continue
            try:
                self.sender.send_image(f'camera_{camera_index}', frame)
            except imagezmq.ImageSenderError:
                time.sleep(0.1)
                continue

        cap.release()

    def _stream_rgbd(self):
        """
        Handles the streaming of the RGB-D camera.
        """
        while self.running_rgbd:
            frames = self.pipeline.wait_for_frames()
            depth_frame = frames.get_depth_frame()
            color_frame = frames.get_color_frame()

            if not depth_frame or not color_frame:
                continue

            depth_image = np.asanyarray(depth_frame.get_data())
            color_image = np.asanyarray(color_frame.get_data())

            combined_data = {
                'color': color_image,
                'depth': depth_image
            }

            try:
                self.sender.send_image('camera_rgbd', combined_data)
            except imagezmq.ImageSenderError:
                time.sleep(0.1)
                continue

    def stop(self):
        """
        Stops the RealSense pipeline for the RGB-D camera.
        """
        if self.use_rgbd:
            self.pipeline.stop()

    def set_rgbd_parameters(self, params):
        """
        Sets parameters for the RealSense RGB-D camera.

        Args:
            params (dict): Dictionary containing the parameters to set (e.g., resolution, fps, exposure).
        """
        if self.use_rgbd:
            depth_sensor = self.pipeline_profile.get_device().first_depth_sensor()

            if 'resolution' in params:
                width, height = params['resolution']
                config = rs.config()
                config.enable_stream(rs.stream.depth, width, height, rs.format.z16, 30)
                config.enable_stream(rs.stream.color, width, height, rs.format.bgr8, 30)
                self.pipeline.stop()
                self.pipeline.start(config)

            if 'fps' in params:
                # RealSense FPS adjustments typically require reconfiguring the stream
                pass  # Implement as needed

            if 'exposure' in params:
                depth_sensor.set_option(rs.option.exposure, params['exposure'])

            if 'gain' in params:
                depth_sensor.set_option(rs.option.gain, params['gain'])

            if 'laser_power' in params:
                depth_sensor.set_option(rs.option.laser_power, params['laser_power'])

            if 'emitter_enabled' in params:
                depth_sensor.set_option(rs.option.emitter_enabled, params['emitter_enabled'])

    def set_rgb_parameters(self, camera_index=None, params=None):
        """
        Sets parameters for the RGB cameras.

        Args:
            camera_index (int, optional): Index of the RGB camera to set parameters for. If None, applies to all RGB cameras.
            params (dict): Dictionary containing the parameters to set (e.g., resolution, fps, brightness).
        """
        with self.lock:
            if camera_index is None:
                # Apply to all RGB cameras
                for idx, cap in self.caps.items():
                    self._apply_rgb_parameters(cap, params)
            else:
                # Apply to a specific RGB camera
                if camera_index in self.caps:
                    self._apply_rgb_parameters(self.caps[camera_index], params)

    def _apply_rgb_parameters(self, cap, params):
        """
        Applies the given parameters to the specified camera capture object.

        Args:
            cap (cv2.VideoCapture): The OpenCV VideoCapture object.
            params (dict): Dictionary containing the parameters to set (e.g., resolution, fps, brightness).
        """
        if 'resolution' in params:
            width, height = params['resolution']
            cap.set(cv2.CAP_PROP_FRAME_WIDTH, width)
            cap.set(cv2.CAP_PROP_FRAME_HEIGHT, height)
        if 'fps' in params:
            cap.set(cv2.CAP_PROP_FPS, params['fps'])
        if 'brightness' in params:
            cap.set(cv2.CAP_PROP_BRIGHTNESS, params['brightness'])
        if 'contrast' in params:
            cap.set(cv2.CAP_PROP_CONTRAST, params['contrast'])
        if 'saturation' in params:
            cap.set(cv2.CAP_PROP_SATURATION, params['saturation'])
        if 'hue' in params:
            cap.set(cv2.CAP_PROP_HUE, params['hue'])
        if 'gain' in params:
            cap.set(cv2.CAP_PROP_GAIN, params['gain'])
        if 'exposure' in params:
            cap.set(cv2.CAP_PROP_EXPOSURE, params['exposure'])

    def process_control_message(self, control_msg):
        """
        Processes a control message received from the server to start or stop streams or set parameters.

        Args:
            control_msg (str): The control message received from the server.
        """
        control_data = json.loads(control_msg)
        command = control_data.get("command")
        stream_type = control_data.get("stream_type")
        params = control_data.get("params", {})

        if command == "start_stream":
            if stream_type == "rgbd" and not self.running_rgbd:
                self.start_stream()
            elif stream_type == "rgb":
                for idx in self.caps:
                    self.start_stream(camera_index=idx)
        elif command == "stop_stream":
            if stream_type == "rgbd" and self.running_rgbd:
                self.stop_stream()
            elif stream_type == "rgb":
                for idx in self.caps:
                    self.stop_stream(camera_index=idx)
        elif command == "set_parameters":
            if stream_type == "rgbd":
                self.set_rgbd_parameters(params)
            elif stream_type == "rgb":
                self.set_rgb_parameters(params=params)
