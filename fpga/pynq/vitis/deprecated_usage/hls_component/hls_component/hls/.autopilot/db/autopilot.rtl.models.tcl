set SynModuleInfo {
  {SRCNAME entry_proc5 MODELNAME entry_proc5 RTLNAME cvtcolor_og_entry_proc5}
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME cvtcolor_og_Block_entry1_proc}
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1 RTLNAME cvtcolor_og_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1
    SUBMODULES {
      {MODELNAME cvtcolor_og_flow_control_loop_pipe_sequential_init RTLNAME cvtcolor_og_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cvtcolor_og_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME cvtcolor_og_Axi2AxiStream
    SUBMODULES {
      {MODELNAME cvtcolor_og_mul_16ns_16ns_32_3_1 RTLNAME cvtcolor_og_mul_16ns_16ns_32_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc3 MODELNAME entry_proc3 RTLNAME cvtcolor_og_entry_proc3}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME cvtcolor_og_last_blk_pxl_width}
  {SRCNAME AxiStream2MatStream<2>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_2_Pipeline_MMIterInLoopRow RTLNAME cvtcolor_og_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow}
  {SRCNAME AxiStream2MatStream<2> MODELNAME AxiStream2MatStream_2_s RTLNAME cvtcolor_og_AxiStream2MatStream_2_s
    SUBMODULES {
      {MODELNAME cvtcolor_og_mul_32s_32s_32_2_1 RTLNAME cvtcolor_og_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME cvtcolor_og_AxiStream2Mat
    SUBMODULES {
      {MODELNAME cvtcolor_og_fifo_w32_d3_S RTLNAME cvtcolor_og_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME cvtcolor_og_fifo_w32_d3_S RTLNAME cvtcolor_og_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME cvtcolor_og_fifo_w4_d2_S RTLNAME cvtcolor_og_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME cvtcolor_og_Axi2Mat
    SUBMODULES {
      {MODELNAME cvtcolor_og_fifo_w512_d2_S RTLNAME cvtcolor_og_fifo_w512_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME cvtcolor_og_fifo_w32_d2_S RTLNAME cvtcolor_og_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME cvtcolor_og_fifo_w32_d2_S RTLNAME cvtcolor_og_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME cvtcolor_og_start_for_AxiStream2Mat_U0 RTLNAME cvtcolor_og_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<512, 16, 1080, 1920, 1, 2>} MODELNAME Array2xfMat_512_16_1080_1920_1_2_s RTLNAME cvtcolor_og_Array2xfMat_512_16_1080_1920_1_2_s}
  {SRCNAME {bgr2gray<16, 0, 1080, 1920, 1, 2, 2>_Pipeline_columnloop} MODELNAME bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop RTLNAME cvtcolor_og_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop
    SUBMODULES {
      {MODELNAME cvtcolor_og_mul_8ns_15ns_22_1_1 RTLNAME cvtcolor_og_mul_8ns_15ns_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cvtcolor_og_mac_muladd_8ns_12ns_22ns_22_4_1 RTLNAME cvtcolor_og_mac_muladd_8ns_12ns_22ns_22_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cvtcolor_og_mac_muladd_8ns_15ns_22ns_23_4_1 RTLNAME cvtcolor_og_mac_muladd_8ns_15ns_22ns_23_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {bgr2gray<16, 0, 1080, 1920, 1, 2, 2>} MODELNAME bgr2gray_16_0_1080_1920_1_2_2_s RTLNAME cvtcolor_og_bgr2gray_16_0_1080_1920_1_2_2_s}
  {SRCNAME entry_proc4 MODELNAME entry_proc4 RTLNAME cvtcolor_og_entry_proc4}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME cvtcolor_og_addrbound}
  {SRCNAME Mat2Axi_Block_entry24_proc MODELNAME Mat2Axi_Block_entry24_proc RTLNAME cvtcolor_og_Mat2Axi_Block_entry24_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME cvtcolor_og_entry_proc}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME cvtcolor_og_last_blk_pxl_width_1}
  {SRCNAME MatStream2AxiStream<2>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME cvtcolor_og_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol}
  {SRCNAME MatStream2AxiStream<2> MODELNAME MatStream2AxiStream_2_s RTLNAME cvtcolor_og_MatStream2AxiStream_2_s
    SUBMODULES {
      {MODELNAME cvtcolor_og_mul_16ns_16ns_32_1_1 RTLNAME cvtcolor_og_mul_16ns_16ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME cvtcolor_og_Mat2AxiStream
    SUBMODULES {
      {MODELNAME cvtcolor_og_fifo_w16_d3_S RTLNAME cvtcolor_og_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME cvtcolor_og_fifo_w32_d3_S_x RTLNAME cvtcolor_og_fifo_w32_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME cvtcolor_og_fifo_w4_d2_S_x RTLNAME cvtcolor_og_fifo_w4_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME cvtcolor_og_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME cvtcolor_og_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME cvtcolor_og_Mat2Axi
    SUBMODULES {
      {MODELNAME cvtcolor_og_fifo_w64_d4_S RTLNAME cvtcolor_og_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME cvtcolor_og_fifo_w16_d2_S RTLNAME cvtcolor_og_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME cvtcolor_og_fifo_w16_d2_S RTLNAME cvtcolor_og_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_U}
      {MODELNAME cvtcolor_og_fifo_w512_d2_S_x RTLNAME cvtcolor_og_fifo_w512_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<512, 0, 1080, 1920, 1, 2, 1>} MODELNAME xfMat2Array_512_0_1080_1920_1_2_1_s RTLNAME cvtcolor_og_xfMat2Array_512_0_1080_1920_1_2_1_s}
  {SRCNAME cvtcolor_og MODELNAME cvtcolor_og RTLNAME cvtcolor_og IS_TOP 1
    SUBMODULES {
      {MODELNAME cvtcolor_og_fifo_w64_d5_S RTLNAME cvtcolor_og_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_gray_c_U}
      {MODELNAME cvtcolor_og_fifo_w32_d4_S RTLNAME cvtcolor_og_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput0_rows_channel_U}
      {MODELNAME cvtcolor_og_fifo_w32_d4_S RTLNAME cvtcolor_og_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput0_cols_channel_U}
      {MODELNAME cvtcolor_og_fifo_w32_d2_S_x RTLNAME cvtcolor_og_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput0_rows_c9_channel_U}
      {MODELNAME cvtcolor_og_fifo_w32_d2_S_x RTLNAME cvtcolor_og_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput0_cols_c10_channel_U}
      {MODELNAME cvtcolor_og_fifo_w24_d2_S RTLNAME cvtcolor_og_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput0_data_U}
      {MODELNAME cvtcolor_og_fifo_w32_d2_S_x RTLNAME cvtcolor_og_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput0_rows_c_U}
      {MODELNAME cvtcolor_og_fifo_w32_d2_S_x RTLNAME cvtcolor_og_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput0_cols_c_U}
      {MODELNAME cvtcolor_og_fifo_w8_d2_S RTLNAME cvtcolor_og_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput0_data_U}
      {MODELNAME cvtcolor_og_start_for_bgr2gray_16_0_1080_1920_1_2_2_U0 RTLNAME cvtcolor_og_start_for_bgr2gray_16_0_1080_1920_1_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_bgr2gray_16_0_1080_1920_1_2_2_U0_U}
      {MODELNAME cvtcolor_og_gmem1_m_axi RTLNAME cvtcolor_og_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cvtcolor_og_gmem2_m_axi RTLNAME cvtcolor_og_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cvtcolor_og_control_s_axi RTLNAME cvtcolor_og_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
