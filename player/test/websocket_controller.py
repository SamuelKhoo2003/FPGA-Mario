import websocket
import pygame
import json
import time

"""
    Controller integrated with websocket client to connect to websocket server
    Used when testing websocket protocal between ESP32 cam and client computer
"""

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


class WebSocketClient:
    def __init__(self):
        self.server_address = ""
        self.ws = None
        self.send_interval = 0.9
        self.start_time = time.time()

    def connect_to_server(self, ip):
        self.server_address = f"ws://{ip}:8990"

        websocket.enableTrace(True)
        self.ws = websocket.WebSocketApp(self.server_address,
                                    on_message=self.on_message,
                                    on_error=self.on_error,
                                    on_close=self.on_close,
                                    on_open = self.on_open)
 
        self.ws.run_forever()
    
    def on_message(self, ws, message):
        print("Received message:", message)

    def on_error(self, ws, error):
        print("Error:", error)

    def on_close(self, ws):
        print("Connection closed")

    def is_json(self, myjson):
        try:
            json.loads(myjson)
        except ValueError as e:
            print(f"Error: {e}")
            return False
        return True

    def on_open(self, ws):
        print("Connection opened")
        i = 20

        joystick_obj = Joystick()

        joystick_obj.initialize_pygame()
        joystick_obj.initialize_joystick()
        joystick_obj.check_joystick_connection()
        joystick = joystick_obj.initialize_first_joystick()

        running = True

        while running:
            i += 10

            i %= 220

            running = joystick_obj.handle_events()  

            x_axis, y_axis = joystick_obj.get_joystick_input(joystick)

            x_axis = joystick_obj.map_value(x_axis, -1, 1, -255, 255)
            y_axis = joystick_obj.map_value(y_axis, -1, 1, -255, 255)

            # print(x_axis, y_axis)

            current_time = time.time()

            if((current_time - self.start_time) >= self.send_interval):
                data = json.dumps({"x":x_axis, "y":y_axis})
                self.ws.send(data)
                self.start_time = current_time


if __name__ == "__main__":
    ws = WebSocketClient()
    ws.connect_to_server(input("IP: ").strip())