import os
import requests
import time
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# read api key from .env file
API_KEY = os.getenv("API_KEY")


base_url = "https://c4xxlfr8wh.execute-api.eu-north-1.amazonaws.com/production"
endpoints = {
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

# Function to make requests with any endpoint
def make_post_request(endpoint, data=None):
    url = base_url + endpoints[endpoint]
    headers = {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
    }
    response = requests.post(url, json=data, headers=headers)
    return response

def make_get_request(endpoint):
    url = base_url + endpoints[endpoint]
    headers = {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
    }
    response = requests.get(url, headers=headers)
    return response

def view_leaderboard():
    while True:
        response = make_get_request("leaderboard")
        if response.status_code == 200:
            leaderboard_data = response.json()
            # sorted_leaderboard = sorted(leaderboard_data, key=lambda x: x['best_time'])
            print("\nLeaderboard:")
            for index, player in enumerate(leaderboard_data, start=1):
                print(f"{index}. {player['username']}: {player['best_time']}")
        else:
            print("Failed to retrieve leaderboard. Please try again.")
        choice = input("Enter '0' to go back: ")
        if choice == '0':
            break

def play(i_username):
    response = make_get_request("getAllcar")
    if response.status_code == 200:
        cars = response.json()
        print("\nAvailable Cars:")
        if cars.__len__() == 0:
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
                response = make_post_request("selectCar", data=select_car_data)
                if response.status_code == 200:
                    print(f"\nSelected car: {car_choice}, please connect to selected car before starting the game!")
                    ready = input("Type '1' when ready: ")
                    if ready == '1':
                        response = make_post_request("playerReady", data={"username": i_username, "car_name": car_choice})
                        if response.status_code == 200:
                            print("\nPlayer is ready.")
                            response = make_post_request("getBestTime", data={"username": i_username})
                            if response.status_code == 200:
                                old_best_time = response.json()['best_time']
                                finalPosition = -1
                                while True:
                                    response = make_post_request("racerPosition", data={"car_name": car_choice, "username": i_username})
                                    if response.status_code == 200:
                                        position_data = response.json()
                                        if position_data:
                                            finalPosition = position_data['position']
                                            if finalPosition == 0:
                                                print("First lap not completed yet!")
                                            else:
                                                print(f"{car_choice} current position: {finalPosition}")
                                            time.sleep(10)  # Wait for seconds before checking position again
                                    else:
                                        print("\nGame Over!")
                                        print("Your final position is: ", finalPosition)
                                        response = make_post_request("getBestTime", data={"username": i_username})
                                        if response.status_code == 200:
                                            new_best_time = response.json()['best_time']
                                            if new_best_time != old_best_time:
                                                print(f"Congratulations! You have a new personal best time of {new_best_time}!")
                                            else:
                                                print(f"No new personal best time has been set, your personal best time is still {old_best_time}.")
                                            response = make_post_request("changeStatus", data={"car_name": car_choice, "availability": True})
                                            if response.status_code == 200:
                                                print("\nThank you for playing!")
                                                return
                                            else:
                                                print("Failed to reset car availability.")
                                        else:
                                            print("Failed to get best time. Please try again.")
                                        break
                            else:
                                print("Failed to get best time. Please try again.")
                        else:
                            print("Failed to register player. Please try again.")
                    else:
                        print("Invalid input. Please try again.")
                else:
                    print("Failed to select car. Please try again.")
            else:
                print("Invalid car choice. Please try again.")
    else:
        print("Failed to retrieve cars. Please try again.")

def login():
    username = input("\nEnter username: ")
    password = input("Enter password: ")
    login_data = {"username": username, "password": password}
    response = make_post_request("login", data=login_data)
    if response.status_code == 200:
        print("Login Successful!")
        while True:
            print("\nSelect an option:")
            print("1. View Leaderboard")
            print("2. Play")
            print("0. Logout")
            choice = input("Enter your choice: ")
            if choice == '1':
                view_leaderboard()
            elif choice == '2':
                play(username)
            elif choice == '0':
                print("User is logged out.")
                break
            else:
                print("Invalid choice. Please enter 1, 2, or 0.")
        return True
    else:
        print("Login Failed. Please try again.")
        return False


def register():
    cancel = input("Press 'c' to cancel, or any other key to continue: ")
    if cancel.lower() == 'c':
        print("Registration canceled.")
        return
    name = input("Enter name: ")
    username = input("Enter username: ")
    email = input("Enter email: ")
    while(True):
        password1 = input("Enter password: ")
        password2 = input("Re-enter password: ")
        if password1 == password2:
            break
        else:
            print("Passwords do not match. Please try again.")
    register_data = {"name": name, "username": username, "email": email, "password": password1}
    response = make_post_request("register", data=register_data)
    if response.status_code == 200:
        print("Registration Successful!")
    else:
        print("Registration Failed. Please try again.")


def main():
    print("Welcome to Xilinx AWS test")
    while True:
        print("\nSelect an option:")
        print("1. Login")
        print("2. Register")
        print("0. Exit")
        choice = input("Enter your choice: ")
        if choice == '1':
            login()
        elif choice == '2':
            register()
        elif choice == '0':
            print("\nExiting program. Goodbye!")
            break
        else:
            print("Invalid choice. Please enter 1, 2, or 0.")

if __name__ == "__main__":
    main()
