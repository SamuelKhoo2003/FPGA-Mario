import subprocess
import intel_jtag_uart
import time
import sys 
import re

NIOS_CMD_SHELL_BAT = "C:/intelFPGA_lite/18.1/nios2eds/Nios II Command Shell.bat"

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
    start_time = time.time()
    ju.write(b'nios2-terminal <<< hello')    
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
    elasped_time = time.time()-start_time
    print("x: ",x, ", y: ", y, " round trip time: ", elasped_time)

def main():
    try:
        ju = intel_jtag_uart.intel_jtag_uart()

    except Exception as e:
        print(e)
        sys.exit(0)
    while 1:
        #perform_computation()
        newpy(ju)
        #print("=============================================================\n")


if __name__ == "__main__":
    main()
