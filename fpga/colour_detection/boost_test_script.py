import cv2
import urllib.request
import numpy as np
import time
import requests
import os
from dotenv import load_dotenv
# from IPython.display import display, clear_output
# from PIL import Image
# from io import BytesIO
# from math import sqrt

# Load environment variables from .env file
load_dotenv()

# read api key from .env file
API_KEY = os.getenv("API_KEY")

base_url = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
endpoints = {
    "getIP": "/getIP",
    "changeBoost": "/changeBoost",
}

# when you type the url into the web browser, it shows a single image.
# This code sends continous requests to the url , allowing it to continuously get frames

class StreamCapture:
    def __init__(self):
        self.car_name = input("Enter the car name of the active car: ").strip()
        self.res = input("Select your processing mode of (L)ow, (M)edium, or (H)igh Resolution: ").strip().upper()
        self.route = ""
        self.ip = ""

    def process(self):
        if(self.res == "H"):
            self.route = "cam-hi.jpg"
        elif(self.res == "M"):
            self.route = "cam-mid.jpg"
        else:
            self.route = "cam-lo.jpg"

        response = make_post_request("getIP", data={"car_name": self.car_name, "ip_type": "ip_web"})
        if response.status_code == 200:
            self.ip = response.json()["ip"]
        else:
            print(f"Error: {response.status_code}")
            exit()

        url = f'http://{self.ip}/{self.route}'

        start_time = time.time()
        last_boost_status = False
        # Read and display video frames
        while True:
            try:

                # Delay code if needed:
                current_time = time.time()
                elapsed_time = current_time-start_time
                if elapsed_time > 0.25:
                    # Read a frame from the video stream
                    resp = urllib.request.urlopen(url)
                    image = np.asarray(bytearray(resp.read()), dtype="uint8")
                    frame = cv2.imdecode(image, cv2.IMREAD_COLOR)
                    percentage_green = calculate_green_percentage(frame)

                    if percentage_green > 7:
                        boostStatus = True
                    else:
                        boostStatus = False

                    if last_boost_status != boostStatus:
                        response = make_post_request("changeBoost", data={"car_name": self.car_name, "boost_status": boostStatus})
                        if response.status_code == 200:
                            print("Boost Status Changed")
                        else:
                            print(f"Error: {response.status_code}")
                        last_boost_status = boostStatus

                    print("Percentage of green in the image:", percentage_green, "%")
                    start_time = time.time()

            except Exception as e:
                pass
                # exit()

def make_post_request(endpoint, data=None):
    url = base_url + endpoints[endpoint]
    headers = {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
    }
    response = requests.post(url, json=data, headers=headers)
    return response


# def detect_green(frame, green_range):
#     hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

#     # Create a mask for the green color range
#     mask = cv2.inRange(hsv, green_range[0], green_range[1])

#     # Apply morphological operations to clean up the mask
#     kernel = np.ones((11, 11), np.uint8)
#     mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel)
#     mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)

#     # Find contours in the mask
#     contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

#     return len(contours)

def calculate_green_percentage(image):

    # Convert the image to HSV (Hue, Saturation, Value) color space
    hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

    # Define the lower and upper bounds for green color in HSV
    lower_green = (35, 50, 100)
    upper_green = (85, 255, 255)

    # Threshold the image to extract only green regions
    green_mask = cv2.inRange(hsv_image, lower_green, upper_green)

    # Calculate the total number of pixels in the image
    total_pixels = image.shape[0] * image.shape[1]

    # Count the number of green pixels
    green_pixels = cv2.countNonZero(green_mask)

    # Calculate the percentage of green pixels
    green_percentage = (green_pixels / total_pixels) * 100

    return green_percentage

# def process_frame(percentage, carName):

#     boostStatus = False

#     if percentage > 7:
#         boostStatus = True

#     response = make_post_request("changeBoost", data={"car_name": carName, "boost_status": boostStatus})
#     if response.status_code == 200:
#         print("Boost Status Changed")
#     else:
#         print(f"Error: {response.status_code}")

if __name__ == "__main__":
    print("Starting...")
    streamcap = StreamCapture()
    streamcap.process()