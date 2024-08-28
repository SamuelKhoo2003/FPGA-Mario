#include <stdio.h>
#include <string.h>
#include "system.h"
#include "altera_up_avalon_accelerometer_spi.h"
#include "altera_avalon_timer_regs.h"
#include "altera_avalon_timer.h"
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include <stdlib.h>
#include <sys/alt_stdio.h>

char send_coordinates(FILE* fp, alt_32 x, alt_32 y)
{
    alt_32 radius = 50;

    fprintf(fp, "X: %d, Y: %d end \n%c", x, y, 0x4);
}

int main()
{
	printf("Running..\n");
	FILE* fp;
	char prompt = 0;
	char output;

	alt_32 x = 0;
	alt_32 y = 0;
	alt_16 radius = 50;

	alt_up_accelerometer_spi_dev * acc_dev;
	acc_dev = alt_up_accelerometer_spi_open_dev ("/dev/accelerometer_spi");

	if ( acc_dev == NULL){
	 	printf ("Error \n");
	}else{
	  	printf ("Connected to DE10 \n");
	}

	fp = fopen ("/dev/jtag_uart", "r+");

	if (fp) {
		while (prompt != 'v') {
			do prompt = getc(fp); while (prompt == -1);
			if (prompt != 'v' && prompt != '\xff') {
				alt_up_accelerometer_spi_read_x_axis(acc_dev, &x);
				alt_up_accelerometer_spi_read_y_axis(acc_dev, &y);

				send_coordinates(fp, x, y);
			}
			if (ferror(fp)) {
				clearerr(fp);
			}
		}
		fclose(fp);
	}

	return 0;
}
