#include "accel.hpp"

// Define the pixel data width for the streams
#define STREAM_DATA_WIDTH 32

// Define the width of each color component
#define COLOR_COMPONENT_WIDTH 8

// Define the maximum image size
#define MAX_HEIGHT 1080
#define MAX_WIDTH 1920

// Define the number of pixels processed per clock cycle
#define NPC1 XF_NPPC1

// Define data type for the pixel using AXI streaming interface conventions
typedef ap_axiu<STREAM_DATA_WIDTH, 1, 1, 1> stream_type;

void cvtcolor_rgb2gray(hls::stream<stream_type>& input_stream, hls::stream<stream_type>& output_stream, int rows, int cols) {
    #pragma HLS INTERFACE axis port=input_stream
    #pragma HLS INTERFACE axis port=output_stream
    #pragma HLS INTERFACE s_axilite port=rows
    #pragma HLS INTERFACE s_axilite port=cols
    #pragma HLS INTERFACE s_axilite port=return

    // Allocate memory for the input and output images
    xf::cv::Mat<XF_8UC3, MAX_HEIGHT, MAX_WIDTH, NPC1> imgInput0(rows, cols);
    xf::cv::Mat<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1> imgOutput0(rows, cols);

    #pragma HLS DATAFLOW

    // Read data from the input stream and store it into imgInput0
    for (int i = 0; i < rows*cols; i++) {
        #pragma HLS PIPELINE
        stream_type pixel_stream = input_stream.read();
        ap_uint<STREAM_DATA_WIDTH> pixel_data = pixel_stream.data;

        // Unpack the RGB values; assuming the RGB data is at the LSB
        ap_uint<COLOR_COMPONENT_WIDTH> r = pixel_data.range(7, 0);
        ap_uint<COLOR_COMPONENT_WIDTH> g = pixel_data.range(15, 8);
        ap_uint<COLOR_COMPONENT_WIDTH> b = pixel_data.range(23, 16);

        // Combine the unpacked R, G, and B values into a single word (3 channels)
        ap_uint<24> rgb = (r, g, b);
        
        // Write the RGB data into the image matrix
        imgInput0.write(i, rgb);
    }

    // Perform RGB to Grayscale conversion
    xf::cv::rgb2gray<XF_8UC3, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1>(imgInput0, imgOutput0);

    // Write data from imgOutput0 into the output stream
    for (int i = 0; i < rows*cols; i++) {
        #pragma HLS PIPELINE
        ap_uint<24> rgb = imgOutput0.read(i);

        // Pack the grayscale value into the 32-bit stream data word
        // Assuming we're putting the grayscale byte in the LSB of the 32-bit word
        stream_type pixel_stream;
        pixel_stream.data = rgb;
        pixel_stream.keep = 0xFF; // All bytes are valid
        pixel_stream.strb = 0xFF; // All bytes are valid
        pixel_stream.user = 0;    // Not used
        pixel_stream.last = (i == (rows*cols - 1)) ? 1 : 0; // Signal last pixel
        pixel_stream.id = 0;      // Not used
        pixel_stream.dest = 0;    // Not used

        // Write the grayscale pixel to the output stream
        output_stream.write(pixel_stream);
    }
}