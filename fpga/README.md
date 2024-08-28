# Documentation for the FPGA section

This section records all development done on the PYNQ-Z1 and DE10-Lite board. 

### Colour detection
- `colour_detection` contains:
    - `camera-latency-test.py`: Test camera latency
    - `opencv-boost.py`: Final colour detection code for boost implementation
    - `test_files`
        - `usb_webcam.ipynb`: Original OpenCV code that works with a USB webcam plugged into the PYNQ-Z1 board 
        - `sign_detection.ipynb`: Modified code to work with AWS and the local game system, receives frames from ESP32
    - Note: The files in the `test_files` section are intermmediate representations purely used for proof-of-concept. The other two files are actually used in the final implementation.

### PYNQ
- `pynq/vitis_attempts`: Includes all the Vitis HLS files that were used. `att4` was repeatedly used and modified the most for recent development.
- `pynq/vivado`: Includes two block designs
    - `cvtcolor-gray-8`: Working IP of conversion from RGB to GRAY function, does not utilise DMA
    - `threshold-1`: Working IP of thresholding function, does not utilise DMA
    - Note: Both of these block designs refer to hls_components which were exported from the Vitis HLS files. Therefore, there might be errors when trying to open them up, or it will say that "synthesis and implementation out-of-date".
    - Note: Images of the block design are uploaded for reference in case the designs don't open properly for you
- `pynq/jupyter`: 
    - `overlays`: Contains all the .bit, .tcl and .hwh files that are exported from Vivado and can be used as an overlay in PYNQ. There is a README file inside that documents the use case of each overlay and what was tested.
    - `notebooks`:
        - `cam_accel_threshold.ipynb`: Does thresholding properly using MMIO
        - `cam_accel_gray.ipynb`: Does grayscaling properly using MMIO
- **What was omitted?**
    - Vitis HLS exports (hls_components), as you replicate it by modifying and running the HLS files provided
    - Most test folders for Vivado (there were too many attempts made), records of all the exported block designs are in the `pynq/jupyter` folder
    - Overlay files that were used for testing are still documented, but omitted from this repo
    - Note: All the PYNQ implementations have only been tested for single frame thresholding or grayscaling, hence did not make it to the final implementation. Further work will be done after the submission of the project for fun.

### DE10
- Contains the DE10 project files and the Python script for collecting accelerometer data through `intel-jtag-uart`. The code was tested on `Quartus Prime 18.1`.
- Main files include:
    - `DE10_LITE_Golden_Top.qpf` and its respective .sof and .v files, referencing the Information Processing Labs 2-4
    - `software/pls/hello_world` includes the `hello_world.c` file, which is the code running on the NIOS II processor
    - `software` folder also contains the `host_sleepy.py` file, which is the Python file that interfaces with the C file and collects data through JTAG UART
- Procedures for running the project:
1. Open Quartus by double clicking on the `DE10_LITE_Golden_Top.qpf` file
2. Run `Compile` to generate relevant files
3. Use `Programmer` to flash onto DE10
4. Open Eclipse and create a new template with BSP. Use `Hello World` template and replace the C file content with the code in this directory's `hello_world.c`
5. Generate BSP, Build Project, then run as NIOS II hardware. Note that the path must not contain any spaces, otherwise Eclipse is not happy.
6. Once compiled successfully, you should see "Connected to DE10" in your terminal of Eclipse. Press the red square button above the terminal to terminate the process for the next step (Nios II doesn't allow multiple scripts running at the same time)
7. In your computer's command line, run the Python script `host_sleepy.py`. The connection should be made instantly and X and Y values as well as the RTT will be displayed continuously as you tilt and rotate your FPGA. Note that the scripts expects the Nios II bat script path to be `C:/intelFPGA_lite/18.1/nios2eds`. If you are using a difference version or you installed in a different directory, please make changes to the Python script's bat file path.
- Note that the Python script is only used for JTAG testing purposes. The code has been integrated into the `player_controller.py` under the `player` section to function as a tilt control.

