import os
import requests
import time
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Read API key from .env file
API_KEY = os.getenv("API_KEY")

BASE_URL = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
ENDPOINTS = {
    "login": "/login",
    "register": "/register",
    "health": "/health",
    "leaderboard": "/leaderboard",
    "getAllcar": "/getAllcar",
    "selectCar": "/selectCar",
    "updateIP": "/updateIP",
    "playerReady": "/playerReady",
    "getBestTime": "/getBestTime",
    "racerPosition": "/racerPosition",
    "changeStatus": "/changeStatus"
}

# Base Request class
class ApiRequest:
    def __init__(self, api_key):
        self.api_key = api_key

    def make_post_request(self, endpoint, data=None):
        url = BASE_URL + ENDPOINTS[endpoint]
        headers = {
            'x-api-key': self.api_key,
            'Content-Type': 'application/json'
        }
        response = requests.post(url, json=data, headers=headers)
        return response

    def make_get_request(self, endpoint):
        url = BASE_URL + ENDPOINTS[endpoint]
        headers = {
            'x-api-key': self.api_key,
            'Content-Type': 'application/json'
        }
        response = requests.get(url, headers=headers)
        return response


# User class to manage login, registration, and session
class User:
    def __init__(self, api_request):
        self.api_request = api_request
        self.username = None

    def login(self):
        username = input("\nEnter username: ")
        password = input("Enter password: ")
        login_data = {"username": username, "password": password}
        response = self.api_request.make_post_request("login", data=login_data)
        if response.status_code == 200:
            print("Login Successful!")
            self.username = username
            return True
        else:
            print("Login Failed. Please try again.")
            return False

    def register(self):
        cancel = input("Press 'c' to cancel, or any other key to continue: ")
        if cancel.lower() == 'c':
            print("Registration canceled.")
            return
        name = input("Enter name: ")
        username = input("Enter username: ")
        email = input("Enter email: ")
        while True:
            password1 = input("Enter password: ")
            password2 = input("Re-enter password: ")
            if password1 == password2:
                break
            else:
                print("Passwords do not match. Please try again.")
        register_data = {"name": name, "username": username, "email": email, "password": password1}
        response = self.api_request.make_post_request("register", data=register_data)
        if response.status_code == 200:
            print("Registration Successful!")
        else:
            print("Registration Failed. Please try again.")


# Game class to manage gameplay, leaderboard, and car selection
class Game:
    def __init__(self, api_request, user):
        self.api_request = api_request
        self.user = user
        self.car_name = None

    def view_leaderboard(self):
        response = self.api_request.make_get_request("leaderboard")
        if response.status_code == 200:
            leaderboard_data = response.json()
            print("\nLeaderboard:")
            for index, player in enumerate(leaderboard_data, start=1):
                print(f"{index}. {player['username']}: {player['best_time']}")
        else:
            print("Failed to retrieve leaderboard. Please try again.")
        input("Press Enter to continue...")

    def play(self):
        response = self.api_request.make_get_request("getAllcar")
        if response.status_code == 200:
            cars = response.json()
            print("\nAvailable Cars:")
            if len(cars) == 0:
                print("No cars available at the moment.")
                return
            for car in cars:
                print(car['car_name'])
            while True:
                car_choice = input("Enter the name of the car you want to select (or type 'EXIT' to quit): ")
                if car_choice == 'EXIT':
                    print("Exiting game play.")
                    return
                elif car_choice in [car['car_name'] for car in cars]:
                    select_car_data = {"car_name": car_choice}
                    response = self.api_request.make_post_request("selectCar", data=select_car_data)
                    if response.status_code == 200:
                        print(f"\nSelected car: {car_choice}, please connect to selected car before starting the game!")
                        ready = input("Type '1' when ready: ")
                        if ready == '1':
                            self.start_race(car_choice)
                            return
                        else:
                            print("Invalid input. Please try again.")
                    else:
                        print("Failed to select car. Please try again.")
                else:
                    print("Invalid car choice. Please try again.")
        else:
            print("Failed to retrieve cars. Please try again.")

    def start_race(self, car_choice):
        # Register the player as ready
        response = self.api_request.make_post_request("playerReady", data={"username": self.user.username, "car_name": car_choice})
        if response.status_code == 200:
            print("\nPlayer is ready.")
            # Get the player's best time
            response = self.api_request.make_post_request("getBestTime", data={"username": self.user.username})
            if response.status_code == 200:
                old_best_time = response.json()['best_time']
                self.track_race(car_choice, old_best_time)
            else:
                print("Failed to get best time. Please try again.")

    def track_race(self, car_choice, old_best_time):
        final_position = -1
        while True:
            response = self.api_request.make_post_request("racerPosition", data={"car_name": car_choice, "username": self.user.username})
            if response.status_code == 200:
                position_data = response.json()
                if position_data:
                    final_position = position_data['position']
                    if final_position == 0:
                        print("First lap not completed yet!")
                    else:
                        print(f"{car_choice} current position: {final_position}")
                    time.sleep(10)  # Wait for seconds before checking position again
                else:
                    print("\nGame Over!")
                    print("Your final position is:", final_position)
                    self.check_for_new_best_time(car_choice, old_best_time)
                    break

    def check_for_new_best_time(self, car_choice, old_best_time):
        response = self.api_request.make_post_request("getBestTime", data={"username": self.user.username})
        if response.status_code == 200:
            new_best_time = response.json()['best_time']
            if new_best_time != old_best_time:
                print(f"Congratulations! You have a new personal best time of {new_best_time}!")
            else:
                print(f"No new personal best time has been set, your personal best time is still {old_best_time}.")
            # Reset car availability after race
            response = self.api_request.make_post_request("changeStatus", data={"car_name": car_choice, "availability": True})
            if response.status_code == 200:
                print("\nThank you for playing!")
            else:
                print("Failed to reset car availability.")
        else:
            print("Failed to get best time. Please try again.")


# Main control class to manage the flow of the program
class GameFrame:
    def __init__(self):
        self.api_request = ApiRequest(API_KEY)
        self.user = User(self.api_request)
        self.game = Game(self.api_request, self.user)

    def start(self):
        print("Welcome to FPGA Mario Kart!")
        while True:
            print("\nSelect an option:")
            print("1. Login")
            print("2. Register")
            print("0. Exit")
            choice = input("Enter your choice: ")
            if choice == '1':
                if self.user.login():
                    self.game_menu()
            elif choice == '2':
                self.user.register()
            elif choice == '0':
                print("\nExiting program. Goodbye!")
                break
            else:
                print("Invalid choice. Please enter 1, 2, or 0.")

    def game_menu(self):
        while True:
            print("\nSelect an option:")
            print("1. View Leaderboard")
            print("2. Play")
            print("0. Logout")
            choice = input("Enter your choice: ")
            if choice == '1':
                self.game.view_leaderboard()
            elif choice == '2':
                self.game.play()
            elif choice == '0':
                print("User is logged out.")
                break
            else:
                print("Invalid choice. Please enter 1, 2, or 0.")


if __name__ == "__main__":
    game_frame = GameFrame()
    game_frame.start()
