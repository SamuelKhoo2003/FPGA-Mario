#include "accel2.hpp"

// void func(hls::stream, hls::stream, rows, cols)
// xres <-> cols (image width)
// yres <-> rows (image height)
// e.g. 1920x1080 <-> xres * yres

void cvtcolor(axi_stream& img_in, axi_stream& img_out, int rows, int cols) {
    #pragma HLS INTERFACE axis port=img_in
    #pragma HLS INTERFACE axis port=img_out
    #pragma HLS INTERFACE s_axilite port=rows
    #pragma HLS INTERFACE s_axilite port=cols
    #pragma HLS INTERFACE s_axilite port=return

    gray_image img_mat_gray(rows, cols);
    RGB_image img_mat_rgb(rows, cols);

    axi_pixel tmp = img_in.read();

    #pragma HLS DATAFLOW

    xf::cv::AXIvideo2xfMat(img_in, img_mat_rgb);
    
    xf::cv::rgb2gray<XF_8UC3, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, XF_NPPC1, XF_CV_DEPTH, XF_CV_DEPTH>(img_mat_rgb, img_mat_gray);

    xf::cv::xfMat2AXIvideo(img_mat_gray, img_out);
    
}
