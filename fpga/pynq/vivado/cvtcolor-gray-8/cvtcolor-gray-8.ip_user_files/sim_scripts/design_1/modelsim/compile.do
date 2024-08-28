vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_15
vlib modelsim_lib/msim/processing_system7_vip_v1_0_17
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_14
vlib modelsim_lib/msim/generic_baseblocks_v2_1_1
vlib modelsim_lib/msim/axi_register_slice_v2_1_29
vlib modelsim_lib/msim/fifo_generator_v13_2_9
vlib modelsim_lib/msim/axi_data_fifo_v2_1_28
vlib modelsim_lib/msim/axi_crossbar_v2_1_30
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_29
vlib modelsim_lib/msim/axi_clock_converter_v2_1_28
vlib modelsim_lib/msim/blk_mem_gen_v8_4_7
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_29

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 modelsim_lib/msim/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 modelsim_lib/msim/processing_system7_vip_v1_0_17
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 modelsim_lib/msim/proc_sys_reset_v5_0_14
vmap generic_baseblocks_v2_1_1 modelsim_lib/msim/generic_baseblocks_v2_1_1
vmap axi_register_slice_v2_1_29 modelsim_lib/msim/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 modelsim_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 modelsim_lib/msim/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 modelsim_lib/msim/axi_crossbar_v2_1_30
vmap axi_protocol_converter_v2_1_29 modelsim_lib/msim/axi_protocol_converter_v2_1_29
vmap axi_clock_converter_v2_1_28 modelsim_lib/msim/axi_clock_converter_v2_1_28
vmap blk_mem_gen_v8_4_7 modelsim_lib/msim/blk_mem_gen_v8_4_7
vmap axi_dwidth_converter_v2_1_29 modelsim_lib/msim/axi_dwidth_converter_v2_1_29

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_addrbound.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Array2xfMat_512_16_1080_1920_1_2_s.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Axi2AxiStream.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Axi2Mat.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_AxiStream2Axi.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_AxiStream2Axi_Pipeline_MMIterOutLoop2.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_AxiStream2Mat.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_AxiStream2MatStream_2_s.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_bgr2gray_16_0_1080_1920_1_2_2_s.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Block_entry1_proc.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_control_s_axi.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_entry_proc.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_entry_proc3.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_entry_proc4.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_entry_proc5.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w4_d2_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w4_d2_S_x.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w8_d2_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w16_d2_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w16_d3_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w24_d2_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w32_d2_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w32_d2_S_x.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w32_d3_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w32_d3_S_x.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w32_d4_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w64_d4_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w64_d5_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w512_d2_S.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_fifo_w512_d2_S_x.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_flow_control_loop_pipe_sequential_init.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_gmem1_m_axi.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_gmem2_m_axi.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_hls_deadlock_detection_unit.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_last_blk_pxl_width.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_last_blk_pxl_width_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_mac_muladd_8ns_12ns_22ns_22_4_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_mac_muladd_8ns_15ns_22ns_23_4_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Mat2Axi.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Mat2Axi_Block_entry24_proc.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_Mat2AxiStream.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_MatStream2AxiStream_2_s.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_mul_8ns_15ns_22_1_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_mul_16ns_16ns_32_1_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_mul_16ns_16ns_32_3_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_mul_32s_32s_32_2_1.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_start_for_AxiStream2Mat_U0.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_start_for_bgr2gray_16_0_1080_1920_1_2_2_U0.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og_xfMat2Array_512_0_1080_1920_1_2_1_s.v" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog/cvtcolor_og.v" \
"../../../bd/design_1/ip/design_1_cvtcolor_og_0_0/sim/design_1_cvtcolor_og_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_1  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_28  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/769c/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_7  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_29  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/670d/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/6b2b/hdl" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ipshared/5be3/hdl/verilog" "+incdir+../../../../cvtcolor-gray-8.gen/sources_1/bd/design_1/ip/design_1_cvtcolor_og_0_0/drivers/cvtcolor_og_v1_0/src" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

