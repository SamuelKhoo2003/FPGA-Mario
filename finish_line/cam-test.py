import cv2
from pyzbar.pyzbar import decode
from datetime import datetime
import os
import requests
from dotenv import load_dotenv
import time
import threading

# Note: This code is for testing the camera and QR code detection. It is not used in the final implementation. Hence no .env file in final but seen here for local implementation.
# Load environment variables from .env file
load_dotenv()

# read api key from .env file
API_KEY = os.getenv("API_KEY")

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
        'x-api-key': API_KEY,
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

# Temporary storage for current frame detections
# current_frame_detections = set()

# Initialize lap counter
lap_counter = 0

# Create video capture
def detect_qr_codes(frame):
    # Decode QR codes in the image
    decoded_objects = decode(frame)
    qr_data = [obj.data.decode('utf-8') for obj in decoded_objects]
    return qr_data

cap = cv2.VideoCapture(0, cv2.CAP_DSHOW)

# Main loop
try:
    racing_in_progress = False
    race_finished = False
    lap_data = []
    lap_car_counter = 0

    while True:
        # Capture frame-by-frame
        ret, img = cap.read()
        if not ret:
            print("Failed to capture frame")
            break

        # Detect QR codes in the image
        qr_data = detect_qr_codes(img)

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
cap.release()
