import cv2
import numpy as np

class LightChangeDetector:
    def __init__(self, cam_index=0, threshold=50, width=1280, height=720):
        """
        Initialize the LightChangeDetector object.
        :param cam_index: Index of the camera to use.
        :param threshold: Threshold to determine light/dark state.
        :param width: Desired width of the video feed.
        :param height: Desired height of the video feed.
        """
        self.cam_index = cam_index
        self.threshold = threshold
        self.width = width
        self.height = height
        self.camera = None
        self.is_dark = True
        self.prev_tick = cv2.getTickCount()
        self.frame_number = 0
        self.prev_change_frame = 0

    def initialize_camera(self):
        """Sets up the camera with the specified resolution."""
        self.camera = cv2.VideoCapture(self.cam_index)
        if not self.camera.isOpened():
            raise ValueError("Error - could not open video device.")
        self.camera.set(cv2.CAP_PROP_FRAME_WIDTH, self.width)
        self.camera.set(cv2.CAP_PROP_FRAME_HEIGHT, self.height)

        actual_width = self.camera.get(cv2.CAP_PROP_FRAME_WIDTH)
        actual_height = self.camera.get(cv2.CAP_PROP_FRAME_HEIGHT)
        print(f"Actual video resolution: {int(actual_width)}x{int(actual_height)}")

    def process_frame(self):
        """Processes a single frame and detects light/dark changes."""
        ret, frame = self.camera.read()
        if not ret:
            print("Error - could not read frame from camera.")
            return None

        gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        is_now_dark = np.average(gray_frame) < self.threshold

        if self.is_dark != is_now_dark:
            self._handle_light_change(is_now_dark)

        return gray_frame

    def _handle_light_change(self, is_now_dark):
        """Handles the logic for when a light/dark change is detected."""
        self.is_dark = is_now_dark
        current_tick = cv2.getTickCount()

        time_elapsed = (current_tick - self.prev_tick) / cv2.getTickFrequency()
        frame_difference = self.frame_number - self.prev_change_frame
        print(f"{time_elapsed:.3f} sec, {frame_difference} frames since last change.")

        self.prev_tick = current_tick
        self.prev_change_frame = self.frame_number

        fill_color = 255 if is_now_dark else 0
        display_frame = np.full((int(self.height), int(self.width)), fill_color, dtype=np.uint8)
        cv2.imshow('Light Change Detection', display_frame)

    def run(self):
        """Main loop for processing video frames."""
        self.initialize_camera()
        try:
            while True:
                self.frame_number += 1
                self.process_frame()

                if cv2.waitKey(1) & 0xFF == ord('q'):
                    break
        except KeyboardInterrupt:
            print("Exiting...")
        finally:
            self.cleanup()

    def cleanup(self):
        """Releases the camera and closes all OpenCV windows."""
        if self.camera:
            self.camera.release()
        cv2.destroyAllWindows()


if __name__ == "__main__":
    detector = LightChangeDetector(cam_index=0, threshold=50, width=1280, height=720)
    detector.run()
