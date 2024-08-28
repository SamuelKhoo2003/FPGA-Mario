#include "xf_config_params.h"

void cvtcolor_og(ap_uint<INPUT_PTR_WIDTH>* img_rgb, ap_uint<OUTPUT_PTR_WIDTH>* img_gray, int rows, int cols) {
// clang-format off
    #pragma HLS INTERFACE m_axi     port=img_rgb  	offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi     port=img_gray  	offset=slave bundle=gmem2
    #pragma HLS INTERFACE s_axilite port=rows              	 
    #pragma HLS INTERFACE s_axilite port=cols              	 
    #pragma HLS INTERFACE s_axilite port=return
    // clang-format on

    xf::cv::Mat<XF_8UC3, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_0> imgInput0;

    imgInput0.rows = rows;
    imgInput0.cols = cols;
    xf::cv::Mat<XF_8UC1, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_OUT_0> imgOutput0;

    imgOutput0.rows = rows;
    imgOutput0.cols = cols;

// clang-format off
    #pragma HLS DATAFLOW
    // clang-format on
    xf::cv::Array2xfMat<INPUT_PTR_WIDTH, XF_8UC3, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_0>(img_rgb, imgInput0);
    xf::cv::rgb2gray<XF_8UC3, XF_8UC1, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_0, XF_CV_DEPTH_OUT_0>(imgInput0, imgOutput0);
    xf::cv::xfMat2Array<OUTPUT_PTR_WIDTH, XF_8UC1, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_OUT_0>(imgOutput0, img_gray);
}