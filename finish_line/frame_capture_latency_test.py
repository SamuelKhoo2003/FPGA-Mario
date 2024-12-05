import time
import cv2
from picamera2 import Picamera2

def calculate_latency():
    """
    Measures the latency of the camera by calculating the time taken
    between capturing a frame and displaying it.
    """
    picam = Picamera2()
    # Configure the camera for video mode
    config = picam.create_video_configuration(main={"format": "BGR888", "size": (2560, 1440)})
    picam.configure(config)
    picam.start()

    try:
        print("Press 'q' to stop the test.")
        while True:
            start_time = time.time()
            # Capture a frame
            frame = picam.capture_array()

            # Calculate the latency
            latency = (time.time() - start_time) * 1000  # Convert to milliseconds
            print(f"Frame Latency: {latency:.2f} ms")

            # Display the frame
            cv2.putText(
                frame, 
                f"Latency: {latency:.2f} ms", 
                (10, 30), 
                cv2.FONT_HERSHEY_SIMPLEX, 
                1, 
                (0, 255, 0), 
                2
            )
            cv2.imshow("Camera Latency Test", frame)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

    finally:
        picam.stop()
        cv2.destroyAllWindows()
        print("Camera test stopped.")

if __name__ == "__main__":
    calculate_latency()
