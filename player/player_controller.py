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
import time
import sys
import re
import cv2

# Load environment variables from .env file
load_dotenv()

# read api key from .env file
API_KEY = os.getenv("API_KEY")

base_url = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
endpoints = {
    "getBoostStatus": "/getBoostStatus",
    "getIP": "/getIP",
}

################# JTAG UART #################
try:
    ju = intel_jtag_uart.intel_jtag_uart()

except Exception as e:
    print("Error: ", e)
    sys.exit(0)
################# JTAG UART #################

def send_on_jtag(cmd):
    # check if atleast one character is being sent down
    assert (len(cmd) >= 1), "Please make the cmd a single character"

    # create a subprocess which will run the nios2-terminal
    process = subprocess.Popen(
        NIOS_CMD_SHELL_BAT,
        bufsize=0,
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
    )

    # send the cmd string to the nios2-terminal, read the output and terminate the process
    try:
        vals, err = process.communicate(
            bytes("nios2-terminal <<< {}".format(cmd), "utf-8")
        )
        # process.terminate()
    except subprocess.TimeoutExpired:
        vals = "Failed"
        # process.terminate()
    print(vals)
    process.terminate()

    return("haha finished") 


def perform_computation():
    res = send_on_jtag("testinf")
    # you can process the output here
    print(res)

def newpy(ju):
    
    ju.write(b'nios2-terminal <<< hello')
    #time.sleep(1)
    vals = ju.read()
    vals = vals.decode()
    vals = vals.strip("b'\"")
    parts = vals.split(' end')
    data_part = parts[0] if parts else ''
    data_values = data_part.split(',')

    x_val = data_values[0].strip() if len(data_values) > 0 else ''
    y_val = data_values[1].strip() if len(data_values) > 1 else ''

    match_x = re.findall(r"[-]?\d+", x_val)
    match_y = re.findall(r"[-]?\d+", y_val)

    x = int(match_x[0]) if match_x else 0
    y = int(match_y[0]) if match_y else 0

    print(x, ":", y)

    return x, y


def make_post_request(endpoint, data=None):
    url = base_url + endpoints[endpoint]
    headers = {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
    }
    response = requests.post(url, json=data, headers=headers)
    return response
class Joystick:
    """
    A class to represent a joystick.
    """
    def __init__(self):
        self.x_values = []
        self.y_values = []
        self.deadzone = 0.1

    def initialize_pygame(self):
        """
        Initializes the pygame module.
        """
        pygame.init()

    def initialize_joystick(self):
        """
        Initializes the joystick module.
        """
        pygame.joystick.init()

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
            pygame.joystick.Joystick: The first joystick.
        """
        joystick = pygame.joystick.Joystick(0)
        joystick.init()
        return joystick

    def handle_events(self) -> bool:
        """
        Handles pygame events.

        Returns:
            bool: True if the program should continue running, False if it should stop.
        """
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                return False
            elif event.type == pygame.JOYBUTTONDOWN:
                if event.button == 0:  # A button
                    return False
        return True

    def get_joystick_input(self, joystick : pygame.joystick.Joystick) -> tuple[float, float]:
        """
        Gets the joystick input values.

        Args:
            joystick pygame.joystick.Joystick: The joystick object.

        Returns:
            tuple[float, float]: The x and y axis values ranging between -1 and 1.
        """
        x_axis = joystick.get_axis(0)
        y_axis = joystick.get_axis(1)

        # Apply deadzone elimination
        if abs(x_axis) < self.deadzone:
            x_axis = 0.0
        if abs(y_axis) < self.deadzone:
            y_axis = 0.0

        return x_axis, y_axis

    def map_value(self, value: float, from_min: float, from_max: float,
                                        to_min: int, to_max: int) -> int:
        """
        Maps a value from one range to another.

        Args:
            value (float): The value to be mapped.
            from_min (float): The minimum value of the input range.
            from_max (float): The maximum value of the input range.
            to_min (int): The minimum value of the output range.
            to_max (int): The maximum value of the output range.

        Returns:
            int: The mapped value.
        """
        return int((value - from_min) * (to_max - to_min) / (from_max - from_min) + to_min)

class TCPClient:
    """
    A class to represent a TCP client.
    """
    def __init__(self):
        self.tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.send_interval = 0
        self.start_time = time.time()

    def connect_to_server(self, esp32_ip : str, esp32_port : int):
        """
        Connects to a TCP server running on ESP32.
        """
        self.tcp_socket.connect((esp32_ip, esp32_port))
        print("Connected to server")

    def send_joystick_input(self, x_axis : float, y_axis : float):
        """
        Sends the joystick input values to the ESP32 server.

        Args:
            x_axis (float): The x-axis value.
            y_axis (float): The y-axis value.
        """

        current_time = time.time()

        if((current_time - self.start_time) >= self.send_interval):
            self.start_time = current_time

            data = {"x": x_axis, "y": y_axis}
            json_string = json.dumps(data)
            self.tcp_socket.sendall(json_string.encode() + b'\n')

    def close_tcp_connection(self):
        """
        Closes the TCP connection.
        """
        print("Closing TCP connection")
        self.tcp_socket.close()


# Game Main Frame
# Note: We no longer listen to the PYNQ board, we only send data to the car
while True:
    print("\nSelect an option:")
    print("1. Drive with Controller")
    print("2. Drive with DE10")
    print("0. Exit")
    choice = input("Enter your choice: ")

    if choice == '1':

        # TCP client setup
        tcp_client = TCPClient()
        carName = input("\nEnter the car name: ")
        response = make_post_request("getIP", data={"car_name": carName, "ip_type": "ip_tcp"})
        car_tcp_ip = response.json()["ip"]
        car_tcp_port = 8990  # Replace with the actual port number
        # tcp_client.connect_to_server(car_tcp_ip, car_tcp_port)
        print("Connected to car with IP:", car_tcp_ip, "and port:", car_tcp_port)

        userController = Joystick()
        userController.initialize_pygame()
        userController.initialize_joystick()
        userController.check_joystick_connection()
        joystick = userController.initialize_first_joystick()

        running = True
        boost = False
        boost_timer = 0
        # boost_active_time = 0

        print("Press the A button to exit and disconnect!")

        while running:
            running = userController.handle_events()
            x_axis, y_axis = userController.get_joystick_input(joystick)

            if not boost:
                response = make_post_request("getBoostStatus", data={"car_name": carName})
                if response.status_code == 200:
                    if response.json()["boost"] == True:
                        boost = True
                        boost_timer = 5
                        # boost_active_time = time.time()
                        boost_timer = threading.Timer(5, lambda: setattr(boost_timer, 'expired', True))
                        boost_timer.start()
                        print("Boost mode activated!")
                else:
                    print("Error: ", response.status_code)

            if boost and getattr(boost_timer, 'expired', False):
                # Check if boost timer has expired
                boost = False
                print("Boost mode deactivated!")

            if boost:
                # Map the values differently for more power
                x_axis = userController.map_value(x_axis, -1, 1, -255, 255)
                y_axis = userController.map_value(y_axis, -1, 1, -255, 255)
            else:
                x_axis = userController.map_value(x_axis, -1, 1, -120, 120)
                y_axis = userController.map_value(y_axis, -1, 1, -120, 120)

            # Send data to car
            # tcp_client.send_joystick_input(x_axis, y_axis)
            print(f"X: {x_axis}, Y: {y_axis}")

        # Close the connection with the car
        tcp_client.close_tcp_connection()
        print("Connection with car closed.")

        pygame.quit()

    elif choice == '2':
        print("This feature is in beta, very unstable")

        # TCP client setup
        tcp_client = TCPClient()
        carName = input("\nEnter the car name: ")
        response = make_post_request("getIP", data={"car_name": carName, "ip_type": "ip_tcp"})
        car_tcp_ip = response.json()["ip"]
        car_tcp_port = 8990  # Replace with the actual port number
        # tcp_client.connect_to_server(car_tcp_ip, car_tcp_port)
        print("Connected to car with IP:", car_tcp_ip, "and port:", car_tcp_port)

        running = True
        boost = False
        boost_timer = 0

        while running:
            # break using keyboard interrupt of "q"
            if cv2.waitKey(1) & 0xFF == ord('q'):
                print("Force quit by user. Exiting...")
                break
            
            # parsing in from DE10 JTAG UART
            x_axis, y_axis = newpy(ju)

            # if not boost:
            #     response = make_post_request("getBoostStatus", data={"car_name": carName})
            #     if response.status_code == 200:
            #         if response.json()["boost"] == True:
            #             boost = True
            #             boost_timer = 5
            #             # boost_active_time = time.time()
            #             boost_timer = threading.Timer(5, lambda: setattr(boost_timer, 'expired', True))
            #             boost_timer.start()
            #             print("Boost mode activated!")
            #     else:
            #         print("Error: ", response.status_code)

            # if boost and getattr(boost_timer, 'expired', False):
            #     # Check if boost timer has expired
            #     boost = False
            #     print("Boost mode deactivated!")

            # if boost:
            #     # Map the values differently for more power
            #     x_axis = userController.map_value(x_axis, -1, 1, -255, 255)
            #     y_axis = userController.map_value(y_axis, -1, 1, -255, 255)
            # else:
            #     x_axis = userController.map_value(x_axis, -1, 1, -120, 120)
            #     y_axis = userController.map_value(y_axis, -1, 1, -120, 120)

            # Send data to car
            # tcp_client.send_joystick_input(x_axis, y_axis)
            print(f"X: {x_axis}, Y: {y_axis}")

        # Close the connection with the car
        tcp_client.close_tcp_connection()
        print("Connection with car closed.")

    elif choice == '0':
        print("Exiting...")
        break
    else:
        print("Invalid choice. Please enter 1 or 0.")

