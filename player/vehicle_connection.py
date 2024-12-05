import socket
import threading
import time
import json
import pygame
import requests
import os
from dotenv import load_dotenv
import subprocess
import intel_jtag_uart
import sys
import re
import cv2

# Load environment variables from .env file
load_dotenv()

# Read API key from .env file
API_KEY = os.getenv("API_KEY")
BASE_URL = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
ENDPOINTS = {
    "getBoostStatus": "/getBoostStatus",
    "getIP": "/getIP",
}

################# JTAG UART #################
try:
    ju = intel_jtag_uart.intel_jtag_uart()
except Exception as e:
    print(f"Error: {e}")
    sys.exit(0)
################# JTAG UART #################


def send_on_jtag(cmd: str) -> str:
    """
    Send a command to the JTAG UART interface.

    Args:
        cmd (str): The command string to be sent to the JTAG terminal.

    Returns:
        str: Response from the terminal.
    """
    assert len(cmd) >= 1, "Command must be at least one character long."
    process = subprocess.Popen(
        NIOS_CMD_SHELL_BAT,
        bufsize=0,
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
    )
    try:
        vals, _ = process.communicate(
            bytes(f"nios2-terminal <<< {cmd}", "utf-8")
        )
    except subprocess.TimeoutExpired:
        vals = "Failed"
    process.terminate()
    return str(vals)


def perform_computation():
    """
    Perform computation by sending a test command to JTAG.
    """
    res = send_on_jtag("testinf")
    print(res)


def parse_jtag(ju) -> tuple[int, int]:
    """
    Parse data from JTAG UART.

    Args:
        ju: JTAG UART object.

    Returns:
        tuple: x and y values parsed from the data.
    """
    ju.write(b'nios2-terminal <<< hello')
    vals = ju.read().decode().strip("b'\"")
    data_values = vals.split(',') if 'end' in vals else []

    x_val = data_values[0].strip() if len(data_values) > 0 else ''
    y_val = data_values[1].strip() if len(data_values) > 1 else ''
    x, y = 0, 0
    if x_val:
        x = int(re.findall(r"[-]?\d+", x_val)[0])
    if y_val:
        y = int(re.findall(r"[-]?\d+", y_val)[0])

    return x, y


def make_post_request(endpoint: str, data=None) -> requests.Response:
    """
    Makes a POST request to the backend API.

    Args:
        endpoint (str): The endpoint to make the request to.
        data (dict): Data to send in the request.

    Returns:
        Response object from the requests library.
    """
    url = BASE_URL + ENDPOINTS[endpoint]
    headers = {'x-api-key': API_KEY, 'Content-Type': 'application/json'}
    return requests.post(url, json=data, headers=headers)


class Joystick:
    """
    A class to represent a joystick and handle its inputs.
    """

    def __init__(self):
        self.deadzone = 0.1
        self.x_values = []
        self.y_values = []

    def initialize_pygame(self):
        """
        Initializes the pygame module for joystick handling.
        """
        pygame.init()

    def check_joystick_connection(self):
        """
        Checks if any joystick is connected.
        """
        if pygame.joystick.get_count() == 0:
            print("No joystick found.")
            pygame.quit()
            exit()

    def initialize_first_joystick(self) -> pygame.joystick.Joystick:
        """
        Initializes the first joystick.

        Returns:
            pygame.joystick.Joystick: The first joystick object.
        """
        joystick = pygame.joystick.Joystick(0)
        joystick.init()
        return joystick

    def handle_events(self) -> bool:
        """
        Handles pygame events and checks for quit or button presses.

        Returns:
            bool: Returns False if quit event or A button pressed.
        """
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                return False
            elif event.type == pygame.JOYBUTTONDOWN and event.button == 0:
                return False
        return True

    def get_joystick_input(self, joystick: pygame.joystick.Joystick) -> tuple[float, float]:
        """
        Gets the joystick input values.

        Args:
            joystick (pygame.joystick.Joystick): The joystick object.

        Returns:
            tuple: The x and y axis values ranging between -1 and 1.
        """
        x_axis = joystick.get_axis(0)
        y_axis = joystick.get_axis(1)

        # Apply deadzone elimination
        x_axis = 0.0 if abs(x_axis) < self.deadzone else x_axis
        y_axis = 0.0 if abs(y_axis) < self.deadzone else y_axis

        return x_axis, y_axis

    def map_value(self, value: float, from_min: float, from_max: float, to_min: int, to_max: int) -> int:
        """
        Maps a joystick value to a specific range.

        Args:
            value (float): The value to be mapped.
            from_min (float): Minimum value of input range.
            from_max (float): Maximum value of input range.
            to_min (int): Minimum value of output range.
            to_max (int): Maximum value of output range.

        Returns:
            int: The mapped value.
        """
        return int((value - from_min) * (to_max - to_min) / (from_max - from_min) + to_min)


class TCPClient:
    """
    A class to represent a TCP client for communication with the car.
    """

    def __init__(self):
        self.tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.send_interval = 0
        self.start_time = time.time()

    def connect_to_server(self, esp32_ip: str, esp32_port: int):
        """
        Connects to a TCP server running on ESP32.

        Args:
            esp32_ip (str): IP address of the ESP32.
            esp32_port (int): Port number of the ESP32 server.
        """
        self.tcp_socket.connect((esp32_ip, esp32_port))
        print(f"Connected to server at {esp32_ip}:{esp32_port}")

    def send_joystick_input(self, x_axis: float, y_axis: float):
        """
        Sends joystick input values to the ESP32 server.

        Args:
            x_axis (float): The x-axis value.
            y_axis (float): The y-axis value.
        """
        current_time = time.time()

        if current_time - self.start_time >= self.send_interval:
            self.start_time = current_time
            data = {"x": x_axis, "y": y_axis}
            self.tcp_socket.sendall(json.dumps(data).encode() + b'\n')

    def close_tcp_connection(self):
        """
        Closes the TCP connection.
        """
        print("Closing TCP connection.")
        self.tcp_socket.close()


class GameController:
    """
    Main class to run the game and handle user input and communication.
    """

    def __init__(self):
        self.car_name = ""
        self.tcp_client = TCPClient()
        self.joystick = Joystick()

    def start_game(self):
        """
        Starts the game loop and handles user input for both joystick and DE10 control.
        """
        while True:
            print("\nSelect an option:")
            print("1. Drive with Controller")
            print("2. Drive with DE10")
            print("0. Exit")
            choice = input("Enter your choice: ")

            if choice == '1':
                self.drive_with_controller()

            elif choice == '2':
                print("This feature is in beta, stability is still being fine tuned!")
                self.drive_with_de10()

            elif choice == '0':
                print("Exiting...")
                break

            else:
                print("Invalid choice. Please enter 1, 2, or 0.")

    def drive_with_controller(self):
        """
        Handles the joystick-controlled driving functionality.
        """
        self.car_name = input("\nEnter the car name: ")
        response = make_post_request("getIP", data={"car_name": self.car_name, "ip_type": "ip_tcp"})
        car_tcp_ip = response.json()["ip"]
        car_tcp_port = 8990  # network port number

        print(f"Connected to car at IP: {car_tcp_ip} and port: {car_tcp_port}")

        self.joystick.initialize_pygame()
        self.joystick.check_joystick_connection()
        joystick = self.joystick.initialize_first_joystick()

        running = True
        while running:
            running = self.joystick.handle_events()
            x_axis, y_axis = self.joystick.get_joystick_input(joystick)
            self.tcp_client.send_joystick_input(x_axis, y_axis)
            print(f"Sending X: {x_axis}, Y: {y_axis}")

        self.tcp_client.close_tcp_connection()

    def drive_with_de10(self):
        """
        Handles driving functionality with the DE10 board.
        """
        self.car_name = input("\nEnter the car name: ")
        response = make_post_request("getIP", data={"car_name": self.car_name, "ip_type": "ip_tcp"})
        car_tcp_ip = response.json()["ip"]
        car_tcp_port = 8990  # Replace with the actual port number

        print(f"Connected to car at IP: {car_tcp_ip} and port: {car_tcp_port}")

        running = True
        while running:
            if cv2.waitKey(1) & 0xFF == ord('q'):
                print("Force quit by user. Exiting...")
                break
            x_axis, y_axis = parse_jtag(ju)
            print(f"Sending X: {x_axis}, Y: {y_axis}")


if __name__ == "__main__":
    game_controller = GameController()
    game_controller.start_game()
