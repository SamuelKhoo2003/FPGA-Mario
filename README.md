# FPGA Mario Kart - Project Overview

**Project Timeline:** April 2024  

## Project Summary

The FPGA Mario Kart project is an innovative and custom-built racing game system that merges the worlds of hardware, software, and cloud computing. The game leverages FPGA (Field-Programmable Gate Array) technology to create a unique racing experience, complete with real-time car tracking, live lap times, and position tracking.

## Key Features

- **Racing Network Hosted on FPGA Boards:** The core of the system is built on PYNQ FPGA boards, which host the racing network. The DE10 boards are used as controllers for custom cars, each with unique abilities. The game is designed to provide a full-featured experience, including user registration, lap timing, and position tracking.

- **Start/Finish Line System:** A custom-designed start/finish line system was developed using computer vision and FPGA acceleration. This system accurately tracks cars as they cross the line, ensuring precise lap timing.

- **Cloud Integration:** The project integrates with a cloud database, where all race data, including lap times and car positions, are stored. The cloud infrastructure is supported by over 15 AWS Lambda functions, ensuring scalable and efficient data processing.

- **FPGA and Software Integration:** The software framework for FPGA integration was designed to interact seamlessly with the race interface. This included the development of Python scripts for real-time data processing and OpenCV for computer vision tasks.

- **Collaborative Development:** The project was developed by a team of four, using Slack for effective collaboration. The team utilized a Git repository to manage the codebase, ensuring smooth version control and efficient development.

## Development Environment

The development environment was organized into various directories to manage different components of the project, including FPGA hardware configurations, car microcontroller code, and cloud API configurations. This modular structure facilitated parallel development and testing of different subsystems.

## Conclusion

The FPGA Mario Kart project showcases the potential of combining FPGA technology with cloud computing and software development to create a dynamic and interactive gaming experience. Through collaborative teamwork and innovative engineering, the project successfully delivered a fully functional racing system that pushes the boundaries of what can be achieved with FPGA technology.
