# information-processing-cw

The git repo is organised as follows:

```
repo:
- aws/
	- (all API configurations for AWS)
- CAD/
	- car/
	- finish line/
	- tracks/
- car/
	- include/ (files for the cars microcontrollers)
	- lib/
	- src/
	- test/ (various test files mentioned in the report)
	- .gitignore
	- platformio.ini
- finish_line/
	- raspberrypi.py (Start/finish line system for Raspberry Pi 4B with PiCamera3 module)
- fpga/
	- colour_detection/
		- opencv-boost.py (PYNQ replacement to process camera data on local hardware)
		- camera-latency-test.py (Hardware benchmarking for camera and OpenCV performance)
	- pynq/
		- vitis_attempts/
		- vivado/
		- jupyter/
	- quartus_de10/
- player/
	- player_script.py (Player's main game frame)
	- player_controller.py (Player's controller interface)
```

## Cloning the repo and vault

To work on this project, one should clone the repo in a separate folder as the obsidian documentation vault, e.g.

```
information-processing-cw
	- repo
	- documentation
```

