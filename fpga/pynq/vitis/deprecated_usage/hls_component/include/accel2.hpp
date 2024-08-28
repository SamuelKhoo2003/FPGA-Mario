#include "ap_fixed.h"
#include "stdint.h"

#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "common/xf_infra.hpp"
#include "imgproc/xf_cvt_color.hpp"
#include "imgproc/xf_cvt_color_1.hpp"
//#include "imgproc/xf_rgb2hsv.hpp"
#include "imgproc/xf_bgr2hsv.hpp"

#define MAX_WIDTH 1920
#define MAX_HEIGHT 1080

#define XF_CV_DEPTH 2

typedef ap_axiu<32,0,0,0> axi_pixel;
typedef hls::stream<axi_pixel> axi_stream;

// Update Mat definitions to use xf::cv namespace and appropriate types
typedef xf::cv::Mat<XF_8UC3, MAX_HEIGHT, MAX_WIDTH, XF_NPPC1, XF_CV_DEPTH> RGB_image;
typedef xf::cv::Mat<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, XF_NPPC1, XF_CV_DEPTH> gray_image;

void cvtcolor(axi_stream& img_in, axi_stream& img_out, int rows, int cols);