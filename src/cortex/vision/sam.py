import threading
import torch
import cv2
import numpy as np

import queue
from PIL import Image
from sam2.build_sam import build_sam2
from sam2.sam2_image_predictor import SAM2ImagePredictor
from sam2.sam2_video_predictor import SAM2VideoPredictor

# ImageSegmentation Class
class ImageSegmentation:
    def __init__(self, model_config_path, checkpoint_path):
        self.device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        self.model = build_sam2(model_config_path, checkpoint_path).to(self.device)
        self.predictor = SAM2ImagePredictor(self.model)
        self.image_path = None
        self.prompt = None
        self.result = None
        self.thread = None
        self.stop_thread = threading.Event()

    def set_image(self, image_path):
        image = Image.open(image_path).convert("RGB")
        self.predictor.set_image(image)
    
    def generate_mask(self, prompt):
        masks = self.predictor.predict(prompt)
        return masks

    def run(self, image_path, prompt):
        self.image_path = image_path
        self.prompt = prompt
        self.thread = threading.Thread(target=self._process)
        self.thread.start()

    def _process(self):
        if not self.stop_thread.is_set():
            self.set_image(self.image_path)
            self.result = self.generate_mask(self.prompt)

    def get_result(self):
        if self.thread and self.thread.is_alive():
            self.thread.join()
        return self.result

    def stop(self):
        self.stop_thread.set()
        if self.thread and self.thread.is_alive():
            self.thread.join()

# VideoSegmentation Class
class VideoSegmentation:
    def __init__(self, model_config_path, checkpoint_path):
        self.device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        self.model = build_sam2(model_config_path, checkpoint_path).to(self.device)
        self.predictor = SAM2VideoPredictor(self.model)
        self.thread = None
        self.stop_thread = threading.Event()

    def run(self, video_path, output_path, initial_prompt):
        self.thread = threading.Thread(target=self._process, args=(video_path, output_path, initial_prompt))
        self.thread.start()

    def _process(self, video_path, output_path, initial_prompt):
        cap = cv2.VideoCapture(video_path)
        fourcc = cv2.VideoWriter_fourcc(*'XVID')
        out = cv2.VideoWriter(output_path, fourcc, 20.0, (640, 480))
        
        ret, first_frame = cap.read()
        image = Image.fromarray(cv2.cvtColor(first_frame, cv2.COLOR_BGR2RGB))
        masklet = self.predictor.initialize_masklet(image, initial_prompt)
        
        out.write(self.apply_mask(first_frame, masklet))
        
        while cap.isOpened() and not self.stop_thread.is_set():
            ret, frame = cap.read()
            if not ret:
                break
            
            image = Image.fromarray(cv2.cvtColor(frame, cv2.COLOR_BGR2RGB))
            masklet = self.predictor.propagate_masklet(image, masklet)
            segmented_frame = self.apply_mask(frame, masklet)
            out.write(segmented_frame)
        
        cap.release()
        out.release()

    def apply_mask(self, frame, mask):
        mask = mask.astype(np.uint8)
        mask = np.stack([mask] * 3, axis=-1)
        segmented_frame = cv2.addWeighted(frame, 0.6, mask * 255, 0.4, 0)
        return segmented_frame

    def stop(self):
        self.stop_thread.set()
        if self.thread and self.thread.is_alive():
            self.thread.join()

# RealTimeSegmentation Class
class RealTimeSegmentation:
    def __init__(self, model_config_path, checkpoint_path):
        self.device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        self.model = build_sam2(model_config_path, checkpoint_path).to(self.device)
        self.predictor = SAM2VideoPredictor(self.model)
        self.masklet = None
        self.queue = queue.Queue()
        self.thread = None
        self.stop_thread = threading.Event()

    def run(self, frame_generator, initial_prompt):
        self.thread = threading.Thread(target=self._process, args=(frame_generator, initial_prompt))
        self.thread.start()

    def _process(self, frame_generator, initial_prompt):
        first_frame = next(frame_generator)
        image = Image.fromarray(cv2.cvtColor(first_frame, cv2.COLOR_BGR2RGB))
        self.masklet = self.predictor.initialize_masklet(image, initial_prompt)
        self.queue.put(self.apply_mask(first_frame, self.masklet))
        
        for frame in frame_generator:
            if self.stop_thread.is_set():
                break
            image = Image.fromarray(cv2.cvtColor(frame, cv2.COLOR_BGR2RGB))
            self.masklet = self.predictor.propagate_masklet(image, self.masklet)
            self.queue.put(self.apply_mask(frame, self.masklet))

    def apply_mask(self, frame, mask):
        mask = mask.astype(np.uint8)
        mask = np.stack([mask] * 3, axis=-1)
        segmented_frame = cv2.addWeighted(frame, 0.6, mask * 255, 0.4, 0)
        return segmented_frame

    def get_segmented_frames(self):
        while not self.queue.empty():
            yield self.queue.get()

    def stop(self):
        self.stop_thread.set()
        if self.thread and self.thread.is_alive():
            self.thread.join()
