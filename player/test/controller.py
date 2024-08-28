#!/usr/bin/env python
'''
This script controls a TCP client using Xbox controller input.
'''

__version__ = "0.1.0"
__author__ = "Sanjit Raman"


import time
import socket
import json
import pygame
import keyboard

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
        self.send_interval = 0.3
        self.start_time = time.time()
    
    def is_json(self, _json): 
        try:
            json.loads(_json)
        except ValueError as e:
            return False
        return True

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

            print("Sent x: {} y: {}".format(x_axis, y_axis))

            data = {"x": x_axis, "y": y_axis}
            json_string = json.dumps(data)

            try:
                if(self.is_json(json_string)):
                    self.tcp_socket.sendall(json_string.encode("utf-8") + b'\n')
            except Exception as e:
                print(f"Error {e}")

    def send_keyboard_command(self, command):
        current_time = time.time()

        if((current_time - self.start_time) >= self.send_interval):
            self.start_time = current_time

            json_string = json.dumps(command)
            self.tcp_socket.sendall(json_string.encode('utf-8') + b'\n')

    def close_tcp_connection(self):
        """
        Closes the TCP connection.
        """
        print("Closing TCP connection")
        self.tcp_socket.close()


class JoystickController:
    """
    A class to represent a joystick controller.
    """
    def __init__(self):
        self.ip = ""
        self.port = 0

        self.joystick = Joystick()
        self.tcp_client = TCPClient()

    def get_ip_and_port(self) -> tuple[str, int]:
        """
        Gets the IP address and port number of the ESP32 server.

        Returns:
            tuple[str, int]: The IP address and port number.
        """
        ip = input("Enter ESP32 IP: ")
        return (ip, 8990,)

    def main(self):
        """
        The main function to control the TCP client using Xbox controller input.
        """
        self.joystick.initialize_pygame()
        self.joystick.initialize_joystick()
        self.joystick.check_joystick_connection()
        joystick = self.joystick.initialize_first_joystick()
        
        self.ip, self.port = self.get_ip_and_port()
        self.tcp_client.connect_to_server(self.ip, self.port)
        
        running = True
        while running:
            running = self.joystick.handle_events()
            x_axis, y_axis = self.joystick.get_joystick_input(joystick)
            x_axis = self.joystick.map_value(x_axis, -1, 1, -255, 255)
            y_axis = self.joystick.map_value(y_axis, -1, 1, -255, 255)
            self.tcp_client.send_joystick_input(x_axis, y_axis)

        self.tcp_client.close_tcp_connection()
        pygame.quit()

class KeyboardController():
    """
    A class to represent a keyboard controller.
    """
    def __init__(self):
        self.x_axis = 0
        self.y_axis = 0

        self.ip = ""
        self.port = 0

        self.tcp_client = TCPClient()

    def get_ip_and_port(self) -> tuple[str, int]:
        """
        Gets the IP address and port number of the ESP32 server.

        Returns:
            tuple[str, int]: The IP address and port number.
        """
        ip = input("Enter ESP32 IP: ")
        return ip, 8990
    
    def main(self):
        """
        The main function to control the TCP client using keyboard input.
        When the user outputs a value greater than 255, the program will stop.
        """
        self.ip, self.port = self.get_ip_and_port()
        self.tcp_client.connect_to_server(self.ip, self.port)

        running = True

        while running:
            self.x_axis = int(input("Enter x: "))
            self.y_axis = int(input("Enter y: "))

            # Add a condition to exit the loop
            if abs(self.x_axis) > 255 or abs(self.y_axis) > 255:
                self.tcp_client.send_joystick_input(0, 0)
                running = False
            else:
                self.tcp_client.send_joystick_input(abs(self.x_axis), abs(self.y_axis))

        self.tcp_client.close_tcp_connection()

if __name__ == "__main__":
    KeyboardController().main()
    #JoystickController().main()
