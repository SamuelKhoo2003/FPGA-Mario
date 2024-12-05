import cv2
from pyzbar.pyzbar import decode
from datetime import datetime
import os
import requests
from dotenv import load_dotenv
import time
import threading

# Load environment variables
load_dotenv()
API_KEY = os.getenv("API_KEY")

# AWS API configuration
BASE_URL = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
ENDPOINTS = {
    "endGame": "/endGame",
    "raceStart": "/raceStart",
    "raceLap": "/raceLap",
    "racerBestTime": "/racerBestTime"
}

# Function to make POST requests
def make_post_request(endpoint, data=None):
    url = BASE_URL + ENDPOINTS[endpoint]
    headers = {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
    }
    try:
        response = requests.post(url, json=data, headers=headers)
        return response
    except requests.RequestException as e:
        print(f"Error in POST request to {endpoint}: {e}")
        return None

# Countdown function
def start_countdown():
    for i in range(3, 0, -1):
        print(i)
        time.sleep(1)
    print("Go!")

# QR code detection function
def detect_qr_codes(frame):
    decoded_objects = decode(frame)
    return [obj.data.decode('utf-8') for obj in decoded_objects]

# Main function
def main():
    cap = cv2.VideoCapture(0, cv2.CAP_DSHOW)
    lap_counter = 0
    racing_in_progress = False
    lap_data = []
    lap_car_counter = 0

    try:
        while True:
            ret, img = cap.read()
            if not ret:
                print("Failed to capture frame")
                break

            # Detect QR codes
            qr_data = detect_qr_codes(img)

            # Handle QR codes
            for qr in qr_data:
                if qr == "start" and not racing_in_progress:
                    start_countdown()
                    racing_in_progress = True
                    lap_counter = 0
                    lap_data = []
                    lap_car_counter = 0
                elif qr == "reset":
                    if racing_in_progress:
                        racing_in_progress = False
                        response = make_post_request("endGame")
                        if response and response.status_code == 200:
                            print("Race ended successfully.")
                        else:
                            print("Failed to call end game API.")
                        break
                elif qr in {"car1", "car2"}:
                    if racing_in_progress:
                        if lap_counter == 0:
                            lap_counter += 1
                            response = make_post_request(
                                "raceStart",
                                {"starttime": datetime.now().strftime('%H:%M:%S.%f')[:-3]}
                            )
                            if response and response.status_code == 200:
                                print("Start time sent.")
                            else:
                                print("Failed to send start time.")
                            threading.Timer(5, lap_data.remove, args=(qr,)).start()
                        elif lap_counter < 3:
                            if qr not in lap_data:
                                lap_data.append(qr)
                                lap_car_counter += 1
                                lap_info = {
                                    "car_name": qr,
                                    "current_lap": f"lap{lap_counter}",
                                    "lap_time": datetime.now().strftime('%H:%M:%S.%f')[:-3]
                                }
                                response = make_post_request("raceLap", data=lap_info)
                                if response and response.status_code == 200:
                                    print(f"Lap {lap_counter} for {qr} sent.")
                                else:
                                    print(f"Failed to send lap {lap_counter} data.")
                                threading.Timer(5, lap_data.remove, args=(qr,)).start()
                            if lap_car_counter == 2:
                                lap_counter += 1
                                lap_car_counter = 0
                        elif lap_counter == 3:
                            if qr not in lap_data:
                                lap_data.append(qr)
                                lap_car_counter += 1
                                end_info = {
                                    "car_name": qr,
                                    "current_lap": "endtime",
                                    "lap_time": datetime.now().strftime('%H:%M:%S.%f')[:-3]
                                }
                                lap_time_response = make_post_request("raceLap", data=end_info)
                                if lap_time_response and lap_time_response.status_code == 200:
                                    print(f"End time for {qr} sent.")
                                best_time_response = make_post_request(
                                    "racerBestTime", data={"car_name": qr}
                                )
                                if best_time_response and best_time_response.status_code == 200:
                                    print(f"Best time for {qr} sent.")
                                threading.Timer(5, lap_data.remove, args=(qr,)).start()
                            if lap_car_counter == 2:
                                lap_counter = -1
                        else:
                            print("Maximum laps reached. Awaiting reset.")
                    else:
                        print("Race not started yet.")
                else:
                    print(f"Unknown QR code: {qr}")
    except KeyboardInterrupt:
        print("Stopped by user.")
    finally:
        cap.release()

if __name__ == "__main__":
    main()
