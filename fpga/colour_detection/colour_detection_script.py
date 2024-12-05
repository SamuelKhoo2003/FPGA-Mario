import cv2
import urllib.request
import numpy as np
import time
import requests
import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Read API key from .env file
API_KEY = os.getenv("API_KEY")

# Base URL and endpoints for API
BASE_URL = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
ENDPOINTS = {
    "getIP": "/getIP",
    "changeBoost": "/changeBoost",
}


class StreamCapture:
    def __init__(self):
        self.car_name = input("Enter the car name of the active car: ").strip()
        self.resolution = input("Select your processing mode: (L)ow, (M)edium, or (H)igh Resolution: ").strip().upper()
        self.route = self._get_route(self.resolution)
        self.ip = self._get_ip()

    def _get_route(self, resolution):
        """Returns the appropriate camera route based on resolution."""
        return {
            "H": "cam-hi.jpg",
            "M": "cam-mid.jpg"
        }.get(resolution, "cam-lo.jpg")

    def _get_ip(self):
        """Fetches the camera IP address from the server."""
        response = make_post_request("getIP", data={"car_name": self.car_name, "ip_type": "ip_web"})
        if response.status_code == 200:
            return response.json().get("ip", "")
        else:
            print(f"Error: {response.status_code}")
            exit()

    def process(self):
        """Main loop for processing video frames."""
        url = f'http://{self.ip}/{self.route}'
        last_boost_status = False
        start_time = time.time()

        while True:
            try:
                # Delay processing if needed
                elapsed_time = time.time() - start_time
                if elapsed_time > 0.25:
                    # Fetch and decode the video frame
                    frame = self._fetch_frame(url)

                    # Calculate the percentage of green and red
                    percentage_green = calculate_color_percentage(frame, "green")
                    percentage_red = calculate_color_percentage(frame, "red")

                    # Determine the boost status
                    boost_status = percentage_green > 7
                    if last_boost_status != boost_status:
                        self._update_boost_status(boost_status)
                        last_boost_status = boost_status

                    # Print analysis results
                    print(f"Green: {percentage_green:.2f}%, Red: {percentage_red:.2f}%")
                    start_time = time.time()

            except Exception as e:
                print(f"Error processing frame: {e}")

    def _fetch_frame(self, url):
        """Fetches and decodes a video frame from the given URL."""
        resp = urllib.request.urlopen(url)
        image = np.asarray(bytearray(resp.read()), dtype="uint8")
        return cv2.imdecode(image, cv2.IMREAD_COLOR)

    def _update_boost_status(self, boost_status):
        """Updates the boost status via an API request."""
        response = make_post_request("changeBoost", data={"car_name": self.car_name, "boost_status": boost_status})
        if response.status_code == 200:
            print("Boost status updated.")
        else:
            print(f"Error: {response.status_code}")


def make_post_request(endpoint, data=None):
    """Sends a POST request to the given API endpoint."""
    url = BASE_URL + ENDPOINTS[endpoint]
    headers = {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
    }
    return requests.post(url, json=data, headers=headers)


def calculate_color_percentage(image, color):
    """Calculates the percentage of a given color (green or red) in the image."""
    hsv_image = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

    # Define color ranges
    color_ranges = {
        "green": ((35, 50, 100), (85, 255, 255)),
        "red": ((0, 50, 100), (10, 255, 255))  # Adjust as needed for your application
    }

    lower_bound, upper_bound = color_ranges[color]
    color_mask = cv2.inRange(hsv_image, lower_bound, upper_bound)

    # Calculate percentages
    total_pixels = image.shape[0] * image.shape[1]
    color_pixels = cv2.countNonZero(color_mask)
    return (color_pixels / total_pixels) * 100


# Unit tests
def test_calculate_color_percentage():
    """Unit test for color percentage calculation."""
    # Create a solid green image
    green_image = np.full((100, 100, 3), (0, 255, 0), dtype=np.uint8)
    green_percentage = calculate_color_percentage(green_image, "green")
    assert green_percentage > 99, f"Expected > 99, got {green_percentage}"

    # Create a solid red image
    red_image = np.full((100, 100, 3), (0, 0, 255), dtype=np.uint8)
    red_percentage = calculate_color_percentage(red_image, "red")
    assert red_percentage > 99, f"Expected > 99, got {red_percentage}"

    # Create a mixed green and black image
    mixed_image = np.zeros((100, 100, 3), dtype=np.uint8)
    mixed_image[:50, :] = (0, 255, 0)  # Green top half
    green_percentage = calculate_color_percentage(mixed_image, "green")
    assert 49 < green_percentage < 51, f"Expected ~50, got {green_percentage}"

    print("All tests passed!")


if __name__ == "__main__":
    print("Starting...")
    test_calculate_color_percentage()  # Run unit tests
    streamcap = StreamCapture()
    streamcap.process()
