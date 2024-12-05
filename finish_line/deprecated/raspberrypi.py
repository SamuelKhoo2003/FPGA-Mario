import sys
import numpy as np
import time
import requests
import threading
# from PyQt5.QtWidgets import QApplication, QLabel
# from PyQt5.QtCore import QTimer
# from PyQt5.QtGui import QImage, QPixmap
from picamera2 import Picamera2, Preview
from PIL import Image
from pyzbar.pyzbar import decode
from datetime import datetime
# import io


# Initialize Picamera2
picam = Picamera2()

config = picam.create_video_configuration(main={"format": "BGR888", "size": (2560, 1440)})

picam.configure(config)

picam.start()

# AWS API endpoint and endpoints
base_url = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
endpoints = {
    "endGame": "/endGame",
    "raceStart": "/raceStart",
    "raceLap": "/raceLap",
    "racerBestTime": "/racerBestTime"
}

# Function to make requests with any endpoint
def make_post_request(endpoint, data=None):
    url = base_url + endpoints[endpoint]
    headers = {
        'x-api-key': "API_KEY_FILLED_IN_HERE",
        'Content-Type': 'application/json'
    }
    response = requests.post(url, json=data, headers=headers)
    return response

# Function to start countdown
def start_countdown():
    for i in range(3, 0, -1):
        print(i)
        time.sleep(1)
    print("Go!")

def decode_qr_from_image(image):
    """
    Decode QR codes from the given PIL image and return the data.
    """
    decoded_objects = decode(np.array(image))
    return [obj.data.decode('utf-8') for obj in decoded_objects]


# Main loop
try:
    racing_in_progress = False
    race_finished = False
    lap_data = []
    lap_car_counter = 0

    while True:
        # Capture an image to a PIL Image
        numpy_image = picam.capture_array()
        image = Image.fromarray(numpy_image)
        if not image:
            print("Failed to capture frame")
            break

        # Detect QR codes in the image
        qr_data = decode_qr_from_image(image)

        # Process new detections
        for qr in qr_data:
            # Check for duplicate detections
            if qr == "start":
                if not racing_in_progress:
                    # Countdown
                    start_countdown()
                    racing_in_progress = True
                    lap_data = []
                    lap_car_counter = 0
            elif qr == "reset":
                if racing_in_progress:
                    racing_in_progress = False
                    race_finished = True
                    end_game_response = make_post_request("endGame")
                    if end_game_response.status_code == 200:
                        print("End game API called.")
                    else:
                        print("Failed to call end game API.")
                    # print("We call the endGame API here!")
                    print("Race finished!")
                    break
            elif qr == "car1" or qr == "car2":
                if racing_in_progress:
                    if lap_counter == 0:
                        lap_counter += 1
                        response = make_post_request("raceStart", {"starttime": datetime.now().strftime('%H:%M:%S.%f')[:-3]})
                        # print(f"Start Time: {datetime.now().strftime('%H:%M:%S.%f')[:-3]}")
                        if response.status_code == 200:
                            print("Start time sent to server.")
                        else:
                            print("Failed to send start time to server.")
                        time.sleep(5)
                        lap_data.append(qr)
                        threading.Timer(5, lap_data.remove, args=(qr,)).start()
                    elif lap_counter < 3 and lap_counter > 0:
                        if qr not in lap_data:
                            lap_data.append(qr)
                            lap_car_counter += 1
                            lap_info = {"car_name": qr, "current_lap": f"lap{lap_counter}", "lap_time": datetime.now().strftime('%H:%M:%S.%f')[:-3]}
                            response = make_post_request("raceLap", data=lap_info)
                            if response.status_code == 200:
                                print(f"Lap {lap_counter} time for {qr} sent to server.")
                            else:
                                print(f"Failed to send lap {lap_counter} time for {qr} to server.")
                            # print(f"{qr} Lap {lap_counter} Time: {datetime.now().strftime('%H:%M:%S.%f')[:-3]}")
                            threading.Timer(5, lap_data.remove, args=(qr,)).start()
                        if lap_car_counter == 2:
                            lap_counter += 1
                            lap_car_counter = 0
                    elif lap_counter == 3:
                        if qr not in lap_data:
                            lap_data.append(qr)
                            lap_car_counter += 1
                            lap_info = {"car_name": qr, "current_lap": "endtime", "lap_time": datetime.now().strftime('%H:%M:%S.%f')[:-3]}
                            lap_time_response = make_post_request("raceLap", data=lap_info)
                            if lap_time_response.status_code == 200:
                                print(f"End time for {qr} sent to server.")
                            else:
                                print(f"Failed to send end time for {qr} to server.")
                            best_time_response = make_post_request("racerBestTime", data={"car_name": qr})
                            if best_time_response.status_code == 200:
                                print(f"Best time for {qr} sent to server.")
                            else:
                                print(f"Failed to send best time for {qr} to server.")
                            # print(f"{qr} Lap 3 Time: {datetime.now().strftime('%H:%M:%S.%f')[:-3]}")
                            # print(f"Best time calculation API for {qr} called here!")
                            threading.Timer(5, lap_data.remove, args=(qr,)).start()
                        if lap_car_counter == 2:
                            lap_counter = -1
                    else:
                        print("Lap count reached maximum. Waiting for reset QR.")
                else:
                    print("Race not started yet. Waiting for start QR.")
            else:
                print(f"Unknown QR code: {qr}")

        if race_finished:
            # Reset lap_counter to 0
            lap_counter = 0
            race_finished = False
            lap_data = []
            lap_car_counter = 0

except KeyboardInterrupt:  # Allows the cell execution to be stopped by the user.
    print("Execution stopped by the user.")

# Release resources
# sys.exit(app.exec_())



# def update_gui():
#     """
#     Capture an image, decode QR codes, and update the GUI.
#     """
#     # Capture an image to a PIL Image
#     numpy_image = picam.capture_array()
#     image = Image.fromarray(numpy_image)

#     # Decode QR codes
#     qr_data = decode_qr_from_image(image)

#     # Update the GUI with the QR data or any other information
#     # This is where you would update your GUI elements based on QR detection
#     if qr_data:
#         print("QR Detected:", qr_data)
#         ### API CALL HERE

#     # Convert PIL Image to QPixmap and display it in the QLabel
#     qt_image = QImage(numpy_image.data, numpy_image.shape[1], numpy_image.shape[0], numpy_image.strides[0], QImage.Format_RGB888)
#     pixmap = QPixmap.fromImage(qt_image)
#     label.setPixmap(pixmap)
#     label.resize(pixmap.width(), pixmap.height())

# app = QApplication(sys.argv)
# label = QLabel()
# label.show()

# # Set up a timer to update the GUI periodically
# timer = QTimer()
# timer.timeout.connect(update_gui)
# timer.start(500)  # Update every 500 milliseconds

# sys.exit(app.exec_())