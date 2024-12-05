import cv2
from pyzbar.pyzbar import decode
from datetime import datetime
import os
import requests
from dotenv import load_dotenv
import time
import threading


class RaceManager:
    """Manages the race state and interactions with the backend."""

    def __init__(self, api_key, base_url, endpoints):
        self.api_key = api_key
        self.base_url = base_url
        self.endpoints = endpoints
        self.racing_in_progress = False
        self.lap_counter = 0
        self.lap_data = []
        self.lap_car_counter = 0
        self.capture = cv2.VideoCapture(0, cv2.CAP_DSHOW)
        self.participating_cars = set()

    def _make_post_request(self, endpoint, data=None):
        """Send POST requests to the specified endpoint."""
        url = self.base_url + self.endpoints.get(endpoint, "")
        headers = {
            'x-api-key': self.api_key,
            'Content-Type': 'application/json'
        }
        try:
            response = requests.post(url, json=data, headers=headers)
            return response
        except requests.RequestException as e:
            print(f"Error making POST request to {endpoint}: {e}")
            return None

    def _make_get_request(self, endpoint):
        """Send GET requests to the specified endpoint."""
        url = self.base_url + self.endpoints.get(endpoint, "")
        headers = {
            'x-api-key': self.api_key
        }
        try:
            response = requests.get(url, headers=headers)
            if response.status_code == 200:
                return response.json()
            else:
                print(f"Error: {response.status_code} - {response.text}")
                return None
        except requests.RequestException as e:
            print(f"Error making GET request to {endpoint}: {e}")
            return None

    def fetch_participating_cars(self):
        """Fetches the list of participating cars and stores them in a set."""
        car_data = self._make_get_request("getAllcar")
        if car_data:
            self.participating_cars = {car["car_name"] for car in car_data}
            print(f"Participating cars: {self.participating_cars}")
        else:
            print("Failed to fetch participating cars.")

    def start_race(self):
        """Initiates the race with a countdown."""
        self._start_countdown()
        self.racing_in_progress = True
        self.lap_counter = 0
        self.lap_data = []
        self.lap_car_counter = 0

    def end_race(self):
        """Ends the race and resets the state."""
        self.racing_in_progress = False
        response = self._make_post_request("endGame")
        if response and response.status_code == 200:
            print("Race ended successfully.")
        else:
            print("Failed to call end game API.")
        self.reset_race_state()

    def record_lap(self, car_name):
        """Records a lap for a specific car."""
        if self.lap_counter == 0:
            self._start_race_lap(car_name)
        elif 0 < self.lap_counter < 3:
            self._record_mid_race_lap(car_name)
        elif self.lap_counter == 3:
            self._record_final_lap(car_name)

    def reset_race_state(self):
        """Resets race state variables."""
        self.lap_counter = 0
        self.lap_data = []
        self.lap_car_counter = 0

    def _start_countdown(self):
        """Displays a countdown to start the race."""
        for i in range(3, 0, -1):
            print(i)
            time.sleep(1)
        print("Go!")

    def _start_race_lap(self, car_name):
        """Handles the first lap of the race."""
        self.lap_counter += 1
        timestamp = datetime.now().strftime('%H:%M:%S.%f')[:-3]
        response = self._make_post_request("raceStart", {"starttime": timestamp})
        if response and response.status_code == 200:
            print(f"Race start time recorded for {car_name}.")
        else:
            print("Failed to record start time.")
        self._schedule_lap_data_removal(car_name)

    def _record_mid_race_lap(self, car_name):
        """Handles mid-race laps."""
        if car_name not in self.lap_data:
            self.lap_data.append(car_name)
            self.lap_car_counter += 1
            lap_info = {
                "car_name": car_name,
                "current_lap": f"lap{self.lap_counter}",
                "lap_time": datetime.now().strftime('%H:%M:%S.%f')[:-3]
            }
            response = self._make_post_request("raceLap", data=lap_info)
            if response and response.status_code == 200:
                print(f"Lap {self.lap_counter} for {car_name} recorded.")
            else:
                print(f"Failed to record lap {self.lap_counter} for {car_name}.")
            self._schedule_lap_data_removal(car_name)
            if self.lap_car_counter == 2:
                self.lap_counter += 1
                self.lap_car_counter = 0

    def _record_final_lap(self, car_name):
        """Handles the final lap of the race."""
        if car_name not in self.lap_data:
            self.lap_data.append(car_name)
            self.lap_car_counter += 1
            lap_info = {
                "car_name": car_name,
                "current_lap": "endtime",
                "lap_time": datetime.now().strftime('%H:%M:%S.%f')[:-3]
            }
            response = self._make_post_request("raceLap", data=lap_info)
            if response and response.status_code == 200:
                print(f"End time recorded for {car_name}.")
            self._make_post_request("racerBestTime", {"car_name": car_name})
            self._schedule_lap_data_removal(car_name)
            if self.lap_car_counter == 2:
                self.lap_counter = -1

    def _schedule_lap_data_removal(self, car_name):
        """Schedules the removal of a car's lap data after a delay."""
        threading.Timer(5, self.lap_data.remove, args=(car_name,)).start()

    def detect_qr_codes(self, frame):
        """Detects QR codes in the given frame."""
        decoded_objects = decode(frame)
        return [obj.data.decode('utf-8') for obj in decoded_objects]

    def process_frame(self, frame):
        """Processes a single video frame."""
        qr_codes = self.detect_qr_codes(frame)
        for qr_code in qr_codes:
            if qr_code == "start": # simulating race director lights out sequence
                if not self.racing_in_progress:
                    self.start_race()
            elif qr_code == "reset": # simulating a finish flag
                self.end_race()
            elif qr_code in self.participating_cars:
                if self.racing_in_progress:
                    self.record_lap(qr_code)
                else:
                    print("Race not started yet.")
            else:
                print(f"Unknown QR code: {qr_code}")

    def run(self):
        """Main loop for video processing."""
        try:
            while True:
                ret, frame = self.capture.read()
                if not ret:
                    print("Failed to capture frame.")
                    break
                self.process_frame(frame)
        except KeyboardInterrupt:
            print("Stopped by user.")
        finally:
            self.capture.release()


if __name__ == "__main__":
    # Load configuration
    load_dotenv()
    API_KEY = os.getenv("API_KEY")
    BASE_URL = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
    ENDPOINTS = {
        "endGame": "/endGame",
        "raceStart": "/raceStart",
        "raceLap": "/raceLap",
        "racerBestTime": "/racerBestTime",
        "getAllcar": "/getAllcar",
    }

    # Initialize and run the RaceManager
    manager = RaceManager(API_KEY, BASE_URL, ENDPOINTS)
    manager.fetch_participating_cars()
    manager.run()
