// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 20 06:34:16 2024
// Host        : KVL-TUF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_auto_pc_1 -prefix
//               design_1_auto_pc_1_ design_1_auto_pc_1_sim_netlist.v
// Design      : design_1_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_auto_pc_1_axi_data_fifo_v2_1_28_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  design_1_auto_pc_1_axi_data_fifo_v2_1_28_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_auto_pc_1_axi_data_fifo_v2_1_28_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_auto_pc_1_fifo_generator_v13_2_9 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module design_1_auto_pc_1_axi_protocol_converter_v2_1_29_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  design_1_auto_pc_1_axi_data_fifo_v2_1_28_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module design_1_auto_pc_1_axi_protocol_converter_v2_1_29_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  design_1_auto_pc_1_axi_protocol_converter_v2_1_29_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_auto_pc_1_axi_protocol_converter_v2_1_29_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module design_1_auto_pc_1_axi_protocol_converter_v2_1_29_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  design_1_auto_pc_1_axi_protocol_converter_v2_1_29_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_auto_pc_1_axi_protocol_converter_v2_1_29_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_pc_1,axi_protocol_converter_v2_1_29_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_29_axi_protocol_converter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_auto_pc_1
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_auto_pc_1_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_pc_1_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71152)
`pragma protect data_block
2iU4TnpVxMeNamsaut48EqvwTlpE8TNXse67+CCC02Mm692KAEXjLs+moG4p4oFdLB4rTkeZs3L/
uoxhqOgpY+rTz8VLCZar0le/ZYF4MoDsPoBeu6q/A/eoB+DiRqOnlpSyDRrNNsbHYluQnWos2Y95
8YybXjMJlj6w/C0Rz5dqPEkSo2e3Sv9/ZF9LV8ZgkAewLx9FtT8grzsV5BSAEhNWh6EB+sGjcp5m
VjUsgNnsqabBQax+OcUCGpnSPC9yoY11vfem6qo3CKWpTopDHy8XlZptLExK9ddfvVdIsWjogVdp
WjTEH7jbuPoPXV5G6N1NcHjQNBOn2URLyTxVKZMPlgX/6PLdp0d9xYaq0OMzaesUN8v2SacBALdC
OwFS9sWpLBUo0Vstg2yy6zDKSILA7abomORgNwOCh5bPOFllNxvBBqn4mZkHvITr5ZkIUwTPho3q
Cd/LZHQ1Nmg1oirv1jpzo9gFxGYQtiyWpxF42b8gVQG+J+PNtpOcpAzcNfs3Nte+Iytht1EsEIu4
n7ixd+lsZKkJQY0vS7Gnnm9WtXhxOIGp8P458Xs6qM6XNxKm7TAlQf8CPKGGZmUBYxLH5cWKCrC5
IQy/IeKB26Y6tAM2WdPiLXKNxIkxlOQiNNqiaTFdj3C0vqeqYZ9aCRN14wgnq2W1rZbTUSFYry39
Mi9iDosjj8lD6gc2lg1iaIetAvJs8O885AxLWmc/a/s3pSwaQFeSAXlaQJg/g1UNqVBUDYzDoRTC
7eYO706zv55kJfRjJY6pazUo4tFOaG12a5RLi5jtsOVd0WixnXQa1fY5u8KJG/SkkpLcMrFOzPdb
fs8EQyNJLM6dvNjGZkoSwpLPdOJ/sNty0uS1xa0Ggvr+54sItA7881JizB2mM0s23o3DForGJuXQ
dmvzjqeuRsZb1tDB1wtcGcqfwHysQrBfsLBGCmGb4WgT8SaYk7B+Fd2vW4+S2YE8Hl7FGtW1L7ik
Qw5g6Rnd5esLK0cxZuR481Tl1BZ6dFYa+U+1KJZsQ/nZkbHxLAmbpDsjoLX/67bl53spaiung2Cz
+qM84qdC2imFmbau8jw01nkJJYCD60hvMLY5HB1xYeMA23hN04VPP2VfcxOJHxS7O6HXvOhYeP0g
6c9SKCyLyJNmYjGlW7w5UtfSX/5hznOv0SCpChZBW6k4rGMOASQ7dizy4XSQNxdy1IDkdJDktdte
f8he1Ao3L5YLGRd11LY/qTUD8xLXMw2ucrRbBCCxD6nYEiTV81O9l07Cg8p2JTwguE4QiHPoAfEI
yf8mN1FGRmt7oBMQDfT6L/+Ye58xOPBBukbwNcdhClyo7NxmrtTBa9B90locjLEYd/8fQJPHm/va
9sh7DtOVFnEHN2sTKlOHtcY8zF3cHc48Ihod8c4iC+2YXZBvhS4iyOkB8NbKC0FufWwFf6JSsrcb
haXfFra5iT2K9Mm514QOyJW5KhRYkZOen9mwIhyV8XmX3ChHTUtSjhe6Ee7heaV2HNf5HnbiR1mg
s5xR6Z8I5W6f5yO+UWF9mi25Xhwn5/RnMbcVAxd5r5v+Ji9cP06/fMhvMT+dnxporFCrUPlIFS8d
0ryrs7jlan+uXcLsv1E2RXPdexeqUycOEy64DMpf/aKuu4BPp5VB7stiSIn/rKMVVNO4cP5PVDwX
gnFF37TRhNKmRyRrcrhiD3JL42ahNGWnknpNN4GVeKvBULRF7SOcdCTmRKKIU73ruRrbtzgZ6OG+
IH0h6HJHtYf6Oph2aEqwKmFg76EYn1yvxmeFNSDxdqYSnglUymyUwEhNUhzDK/mJ+0nLN1/R1Vzz
jfS88fIZXrpwUn9Jr6QheoMqzRWtbN2NAvc0didOTOJek1Ig2OoLES7cNKWtkiyGobQw4B514coJ
Ceba/+iNtt8Ya+VMu49qGTNC0pI0MDSZ/x61GLaznlzmEMO9mmRLQkRvmCEGBrJ1ZHimGlj6LbRe
k3+sI9HaBocCF0bmcZ53qEReyOtoyHgzeWPEu/5ndUpq09kzb8hxHKjVONpllWKGDW9Z58eRUy1n
z0x0Tdy35SMebyElY2NKqHr7dG31ajsKipR5KaSTqC0IaKT8fcn1yg7fyy8w39LlSDvpRHJ+gTcb
xl5W/y3T6GM2R9dHktX57IfrH/5YdI+zeYPu6TRVMM71fowN/ro/pPvPj1oMEQKdC3Hs5Md98s/r
Fr+7x3+84IOLBQAKJV7irbCdJufJvzAMy9QAkBOnvI3Cx4yiWg1NkS79ZHy/ViqcDeVAOTw1aGD/
IOjDqeKQrbBkF8RbyrgZLnwQPMpDVzdsEKAtmuQfT+0WoV1gBISyX693aMxkA/kt68cNrpVkfF4a
B4KGGf0JWccoLHE3lfAwHaibuUUygesF5V/+UTNei+0HMEMvOew8gzGlXspDi9hX7wkorUK1eN8b
34Dk5mocXHaulpSCePOVzuLTlqQE3Fu7If0brxMr/vJ5ggdxr4cJM0lkhlcSmRRnHxjhcMJp3vyD
XYyABaSoCx6bCzHAyRvnCqReVAcK9qudyxm+Wllt8SOJYJ5AH1ZIiBZVzI8lMb86XEB1F+DSheLg
tzJSbdcEy4RYFU4ZeZR3kPAsVFj73xoryjWZUCRPbjxhjna5OafWpwe/4mzEa1vwBV0Wj0EXZ+Wb
MzsneTFbaOoothnNAKBarHB7KZjHTRc8KBQM1y8kA4FtSmF6ddFDMjcUCcrJoQEWelVUcl8fplZO
ETgT2nSidxB/3ToOCr/qLRBhR0rElk+xhS5ay9ohWjdt9xC4j0hg+IH6pQLILLpMyAByffvrgHbm
pk64aI0Y0CxsmCZUgsMEaknjPr2UruZZDyoFCK4U3o52HIgHN/ygw6E6ErH2xBUarmcGEzpi2sP3
YyZVdOyQVChk1kmqOif3JFkBXBB2rDhdwZqBJdZqSVyMG3Xkdnrg0DInDLBFAasOf419X4QE6jjQ
pDHmUYSS6BHc1EF3aWInQ9fksZ2eIyGVtZc7sK4lzhLmyoquZYbxrGwayH1dj4G0PJCAj/ypDWG5
dGUvppijEU5ZWAD3UfJuLLqQ/NbZqat9wp97UDbc231aakaU8VL7gwRoYadusNhzYtdoVJX7qxLU
Oc6lg4KFdTf6HHHUXhDionFjdW3cn/uiwaLprHQJ8hrmwfjhQR/PhA7sZcQQfSNa6oVvFVm+68AA
YkGP48xVNhZ4D1jlJArCt9W6niJUQ/HJg/13TKmoOko+U6j61oU5PuA65VvbgDYPCi10nSKMWs0y
r///uLQ4jWwszrCqfRArUWg2059ephCfRa8/YmIBINBYGduZ7/5OoUgNSI1xJoollqo9PfHnQ+zO
Q+6uTZkOdukExyvIL7mLdFf8qHyc9bb2RuAoNJn7r3uxMaPlD183zYGukCjZxmMxzqkrzVJaRmf5
tm4/BlKta/YiRIecbyFLZdfoib93woFz3IfHcvZ6Ro1ssA0KNTPABMQB0oHc0nAjv0k4fMzXyEoW
ydEdx+TMleKLPKWH0ndbtyJwvNY9FtU8j+02THDvRD6PCFXx6jeiF5J923Ai+Kay8gSiaG6LVQ5E
O5UVFxEh/L9w57grfEeG9wLZXjhwPC74OAjXiYbee2/e/lFB9K85hO7iQRgk5x7uMyhhatzX0Vtg
ioNHmosqFj0Qak190He7lgYdGwmETQiGw/bjtnmgPDFAumQjvqyUYi+rWV2D7wVUqAEZWAZKZKQ5
wZUbsq8qoNeoNcms4Pk4nbWqhMf2OEQdFMrmAMNqdZNpubibIABxL/wt27afEQOQCDWov74Nz4x1
2skayiXqts4reHoHTl0eYgjE5RL4kNSNxbFMHKZEK7dkewJvh9WRCO67OknL5c/Obe7YOwaThYpe
rA64xAO2DTfooR29uFyVwqQS8aGKwm5Lrx5DjW8KS2BBULvqPBRMngGvSyhmE0pUh5IGB8a5nmpC
clAaMjtYYWF5zhuOpjeNPvJ/GKpTzQ8O6tu/uZfw1V++SaccMiwy0ULdSkjHOPdy/Nz0TbijVMsM
TGayfktTnuT3ePHxxJmZzcfeIF8GqnqgaWpo4lFeD6sXLJRKOIb3ecpnq24Exb78t9DTQS48VE2m
Yk4kR3jUEeHp1G1gScIK6kKJaakvwusMR3OpPsPUiKow6USLTHMWAHJLfcGu3MNGHXWwop69z+pM
aQ4yvtLjPHI0lvm+Y8dX/AIm7GqScSDejNZbuy3f5sG4p67S7uXMeEr5ftnWTTU7EClpROsjXwor
BdRa7h1pSJpZUt+1UynT4wbvAWgmOMm2FxxidaDA9qZWWOrcCBOK5VQ8vJq0H9WH7V3QDc2uulSd
CQfxO0WDQluDYAy4x1GSPPhzm/4WLfrrEyNXGeZSOaAQPJY9uXcqlaawgPSjr/LlcCWa6hfKSkcr
9ivp4SfFOZNPV2bo+VATHDkoAxEEbmfrusOFPQxBpWPfB/snElf7iQuRVqoxOefqcmwpx7Z034Q4
v4sLBC12Ux0SNaZ/curNw1TCBkAv1cI3/YqUblSYzG67LlgMWw3DpLj3BT8/naLhYHqleth0/squ
bZc8zqFMItCnMXu6vAzSYMLGh0Vt/Lnu8t/k1UEqoTIr4GL7hufCHkMGb8eX+nCsgwnjRABDhluv
5P8GiuGaH3AkDdrF+jxAYENC1f4Sd/qn9K+WjQjEdvOHn5JUgmKBcwq8yzyNpmZxg1vc7VIWJpdL
iyjlTD6cQ+yTO0Dkl1dKUYGln2FeJKmb+3CE1jX5bMBpXsQtj+nJf4/055dJgmkl34txS/500BNe
ab7kgx7r3QQYkLdGZgGQZINh2vLz/lITFfsKC/PMuXpEnTtmqvOlw/m3ehH0+GBIaS609QDrDs1K
6Q7advn71O6gL9ZbZvcz2bWgJECRkSk4Tdwl3Rgo1ou8xtUAu9Cg+oxjfnBM+Wvq9MvxJiD+Ix9R
l9MXxb+JHpKYxbo4OkcVY74FfxVrPob827LCqpHJ+FCEmZSeSO2IMIBtmtRcB8UkWE/iUmS0fY1j
OChe/8bJoV+TnIuDe7Nfs6qQ7pYViw/hTVgXFhR7rX53w4qCeN4ZJH75sjLhaqKAi7ItG/RM5lvr
qO39yjtkrT56AAyibS8+bP0b/S19Z1WLDUbUueXVTrLEKG+FUAennPgQ6z9kniYcJv4YyvOgeQC1
m++egJS92hSJJAuBjayBxrXfN1r6SHC07dyvZ+oc1ooqwVRczxKrkUUJWslJ2YGX1I61Yf3hQEPj
WTyXZGkm2EToQONQD2AU24n7GntV7+UMSwbd2IPYygTn1e7Q3LBprXeLo1j42wV4MHMA/gNHUZbK
MXOAy8t/xKXlvEcIu9O8j7AINo9OnP+Oxxlkp+6LvcgOaca0/COISJgXfr6RIp+kiqf08xul+P9K
XSmoZpol5THD3q/tgs6mmh0LMXEmZbluQ96T77ElLa/LrgJMrldtQjk3nFRbgphyNyTz7YHqV5dc
JTRzvopVjGBL5BaIrxAvs73YNLH1QsJLSuFKwIKT+oA4yu4GWxTh8dyc/Rgtuzxj8+en08CQN6Qc
zGVMgLjlqfnt/oNE+KbUD9AZIQOYiBqqTCH0sSAo7P8SY8vg9HutGhg2gwT2RI09jKksT9FkiuYC
sS08k41DyAVrWO3+BNeLrtTT1bId/62KwbmVUmh618ByV9KrCwTiOSU37dEwCMVUoQ6jbf3ecItC
NKmdg7vIIb6woFLfJ6o2Ui0/E6HPSkG+Aa+Zb4W5RVWQvme7cZkm2NtQ7RKEMH9L+zbzsuP1zZR2
+u93ySYpgxPN20iZKnQGJtbd4gGpcyvxQICUHazZAQKFQ+uNDf0CypPs6FAKdWVIUincdxbalHYw
R0rXnHpRTh6Hri/wT0woCEp6HU+2G7raNBtEj/5h18R442I7sUL9KFbIw6CwNFqNKKEwjIZdtr00
HzGuAR7mxABZKRW64Zk2p4QlqxCQk0DSm8DVG51UyH2bPMnaDvDvkH3pCaSVst9evasca//tKkZB
Alwcj383kktTf+AeYqj5eOHsmNVzYJBnHZLGWlKEKUMnuVOLZBzjhqJBY/9UpcLH5F7XaEz9v+iX
tziTpamAqD8xr3XwgFWjIvWtC4McW2w+yvz0ijSpIpcqwvWxIY0eGbMNYE1l90CYdgoyFojBxwhB
sppWB6ysIaq4fY4h59c4k+ns/Sk82XD2PCGXN05InGxxHOBNCeXJDdlfaWP8QMrUrR3TK3oOagGO
ZcRHMAnZDDIjVnqsDlJOFdyfuH9ohdNzwMqE0DGFp0cvYutJVmkQiYrAwpvx0QPmZk3D6fdVU/dP
gYlMDawe/bucp6gRX9plEoJBC+c99SI3cDWjTUzaPpGDTBUR58PILY/oYyDFMVr2UBtj7grK2Xnc
oRcfQ8tMx6a6MDsvbFRYDoMYxsD33EAgnFjCGlxPOiSlNPhoL71okBfp0BEbD9FuLCW3Jji77/Ph
EaMbX/9knjRh0hw3HnlWUqRan5w7LLrs2GUpITpf+v/eMmmKIZ5HJEcXvKGhR9SUWj9eF4vWZ8LZ
Xf7QiC1HtLetx94ozyEwVgtazUKWSlpyOwwCmiqMm4bhE6yqJE4pKw59cg/VZ/TEasBqUPZuStkh
WU4/QG+5K54BZOxUCG5fXRKqyjUtTLzlXdyme7NuzUOUOYe6z+1QhJMb8Kq0wUrzm/VYuL/Zjb09
7CWSBpLXaCqfVfClzyuYjAY74Aj5JN3hB3ovQiNvF+/3aqMvDhEWrJLG+w9kYxalsvJqONSfOE47
j2JfsiZSSRRWkUKFfSt4O1D6I6ewd2j383apTHM+Qs1Hv17oQh0KajCfrwjFS+IllDMHbyL+HLNS
LcUGL2g6O3MnILIDA28zLzo6UhzP/ltBrjXEnEWicQyEZBsQDBM/gOC20rJFN2LIKrH9vFGoXnCG
6WAIBMVwRzMZXD/Kr1zDHz01YOwpN/cxCh5mYjfB3ULHnYYVEIWBo0HOdz1b76sWZbj5DN3mCekj
YTC8DPXrkH/BtnJkwuYXEvxPyXe+P6IHn27yh8MHN+s5IZO8vgFchYkx6goTc4/qMMHhbBO+S/Sq
L03MZS+GdmyOl+Nh/n1jX/nOIawstzGg/oEWj7sG4uoYjZY/IPOhGMp0iL7TgEmCRUtcvMte7ilw
TrRWEOrCBt6AkUKj1IRUBTk/BbANbBrqwgOyx5IDn2JR6kjQIDVTXv3kgi9XGdAsuC+jX1hvC5mL
uVD16D50E3OjQje8o1ID/hs4zoYBVl06lO8M8IQ5NPDeJkNr29dPsMTmJGipIIG3UOE0LD2MxPIi
/M0v1D2nI77qLsF+vbiCL64SZhng4kNpBD8rFXjoeQXs/MMyMhegxH0i1MZruzkObl3Hnxr36Cwp
YqwM0Xvn3COuwxYHLRcCNALLlt9HOGlZ37rCGQOhvAbdIYj/L0zl6x2Wt9OdqNV0BvKRPGUa714f
WuPE2eagOUkTWt/CDNlSQEZX6dlNLZAe8echAQpi6/dO0BbUBhHFhPGMof04rzKsb5Wg8cgIHwPO
EnCMTsKHouLkWDeYPHy0+Q8+g3R4/3rEKvryJ4wUzVxQWtjZAntaaTjohFocuSLujWZAJiTUpfa+
iltw/QKzam5Cv4iLo39/i7/n96YddA9U0OMli7Lc/SRwBWMdxFkOOH60NQ7H8782HPTv0izqFwx6
wnRv0Y8/mtdrkK09QULu6egEl+Q9iqMF6CmSp5sONkx1YadK469CE1VOwA89vtpfuYWCCtwwJX4n
jO8jS1T7uw5InFNJamHBw/EBrggY8ZmiK55zjZg5xraftSY7W+UGD69dUmWTAMkVMGMXJiNVETxC
OKI26K/S22UmcHSSMvnihpMOG4LISztcM8Fs+lFltebDxetZ5BQ86OE0dYNNurUdQENN802jlQvT
dMH9CUHEyI6HWg6aP4vWNPCSLol+xd3udlayUMboofJZNC3AFVj4tfe/LZSCV+JPYkY0sXgAVzSA
nFa7BGHnTsoTQF15UywugxarWLp6DDU2JoFV0+4lsQHsbhPkboy7xgDq2ykoU1qv20MTHsT0bRNX
XFcRqP/jNsIPsKYFZMCa5rSftlLryY/yHB8MGN1PAPBmQhvTq/Rxwa1ZM76ZE93V7ysUYhlRk9ll
6w90GvDIYSGGw1H4eXcmlHoNCpCyTmLqKIntu8lFivqVwhgk97yEhMV5du+mW0IkzPtBBSsKaNdi
EPfPPYS0eiWX9fo28vwHmRdlg01znA0O3ILfAN89SIN80xxRhjpJ9rct0Kq3TkvNyoj/byJeXXY1
3SLvhTEwLD/0w4cLBoExXCMh+8Dx7DzFYIHqb2ZsPXmNart080I1VmZSkWV5bRX3cLvVexjxfwFz
cnJUk0tkWDb7Rg5QtuoOl07VenIXanZ/9YmjhEU3KLCo+q5jlDyGOBqMWRBDpranYf1R0eptKGzF
C1jD5KDZ/RlNXjd3Oe80KTr1+JVnXB/MC1U3wptQ2O+gCHPb3KcToW8NJeF/u6/n27ZwJHwMjvDq
JWx9MqAvrxfw4DKZXKREy97BEHjLbOj06RZsYPfTWgfzgtyRBMDgzi1SqVR6aoehS8GKfZNhUSIo
EWTZV5lnUfsj51Pz4rfjfVuNzY1C3xE3T57+UH9S2f29xrycLOgPR30AErP9weidRHgl3iHiDu93
axEo4C4PVfGVy5zmuut9ccUUf8pBNEOJq05vyAXzMQpO0TRuKRzWQX4zkcZATBn431VnSMASBlb7
48Jdj7AMSnbAv00MFwSuU2f6AuADfzmVa0oWPCxmVfct3GHTN7L8/Zy5g4xyFjD/Eq9lWp8PGfQu
BY/gxmyXpNmxO1RNzxgH8lk6WfS5YYX33d559RB1Zn9/Yv3eSQFepEv/JlQLmO98TfT19Ia4jLIm
ow5u23BnH7KnXkzuPTOyp6Su+Td6OEVQ0GNNvZF6fHX7X/acMBkOFK8BcgYrDs4I8Ztgt4Sz+eLj
9DHFrjLUocKVaOv7Ksv15W+YYncv0u6RPcjz9Qu0mq5KjETdV7jwg862JgiKqwKM5exJE1+fndlZ
tpR902BnGqCvzX4daRkrhsojAmG1BBw4jqSeINxbx3+Uyl3ptZGLyBfIMyDW3uLLjLSJQNH/GAED
eid7b2K0n9ep80NoK5LRpLXaEB6ka3fh3OkXRhbKxF3Mp11IJrxEPBhvaJL5nSVCiL+MX55oZyTO
LURW+fPukfq5uuNQvNfsHFEpcgOiVyhGXiw5wNMNsPvj56iSxCZhgd7evPEOpyiK63ISZ9aHJkGB
QELG4Yvm7Jpr9uv5eB77kV3A6DvQaq9cLyEwnLScZOZv3E1UdWtXx0TsFowkFI75Yel/FgDfKfcf
KjYmKPmkoGxAEKrKmZtBvbC/WNCqKft/ZMKTf6bAFaLusyPNJO4gveuZDOfJ+LKjsMbigsg3sisl
HlbDLv/DxgyqJEWg5bTSlrV05a8SEU+cjd6Ih13OtUVeCJ5dALZD/sxAnBfOEXNzoVhhTkOaYslu
i6msSvy5jFYkSYLnN2e5RMPW6vA3p4x8gH4nM0NtuB9Bf07x3//GYQR7CIezAlGD9xxD93AD+Zuz
0fuVL7HAko5CkCIAIugqBb7YHGJ0T+aCZxExDMY9qPmsm2FSPeYrLcpcOJnxDQUKs3EUN3YYMMBn
R0L1hd1/coEwMGdEbcVYT8TNgMf5TFxe5AYX9pVJ6VW0BAr6+WFM3ghlTPYrnifPOLBytOZBupj4
gIvBmTIvNwcNT6bT1EI+VIe4AxgjHG2WNIzI6uWcTQZ0/1i42BVhYCGfNT5GUiHqFcjOyIzSZ5km
fReTGMpvrp1a/s+hljh+Bc21wwA1lnSkaSHrnzf5jSyC3UoZLhVmAPk3u5WQm7bgp8d9cBsELJCR
5kw1rcLRxbm8XTLl/uyghu22H0NJ7YF3dJ7dxATtIXRgA5A+N5FTuP9+nHLZwsY91jXF1+CPvI17
Do51kfdgqFA4/1hJ1rf28FORQpInC2K2o+ETP8yyGzu5Wjy6tG1vD8j8zaDuy3n4reQlYhJRIkU8
iHrGdKGwp5NHewqVfxhQfGPgOY/Nx6xGZZU3+ySPJTmMrC965TSruhR4KmO+utFm3B/A4SN3/JrW
6dolH181yS9+81CYgdjBn4pAOXEAzVzP9z5dzTXqNVq0l7cFX+KI2yMP8lQ6jbkljOEn9bw4G7p5
g3I5SyMq5op/nvzchRv+tDbNHqJAQ0oUgjGIQi4OUuczeDU7cKkYZhFN7vpngWUlAiMrD9xqcg3w
N4BeP65GSjRn8dfiPIFY+MNMUWJXqouieIHQlyZsxqjgCwV+KgF6//eeDwO3MeRPrzbs5JB4+4Ab
uvrRDtU4GiLTyIvW5YfOtlggyJJlzY+HMqmXSqISZURDBG2eNufq4lzg+u/ZQjngGIJ8bALQ302a
EY/NkTh69fIvYjffzLtMwpL3uP5dcyHGLYKlxCSbSlOUp9bG/GC39wKCIhuzLTCK0LKPl4d2wMva
ZQ3PDSgYV14lMOFYh1cZDacd+lO47x3TsGrAwySKoTDvOpM6Q3I+yQ6TDH2gWXVL8WkowW+c6ogu
YjWY6ofpmByETjprTSwycC57dUKWp2tWnhWZjUmAZma6YEJS+9pdui6Rl8VBwo8/Urx5efJmBkb5
H+OILYWFbO0G4APFVjbdaSp98SnQaH9SIrfHUEwIuExKt4nScyub6jHK3/62bu5Q/O1lC2CO9f/q
WDn2+gJzYNzUgpnyJPmlu8sTQF74wqBijlEiw4L+OEsQIJ2C54MYihSh2gop9hT6cO6lCd5hv/Tc
jOcy09aT1SyzYiG/Uif1F76rNWgZjHN6CiGKHRLh1UB9EIlhZhGA9tsKZnFit5bYjVf8AdQlJzUj
kSlu0OFU/gI26vN966PlegtgBNEfBgjJNWrbi97XFk6HYYsaIZnjLALnOBPGCdaaMrY1gKVBj0Wh
U8LAi8dYE1DXkwafPcsQg3waz1+zuU7UQmerPgOfLml5XVbizwRy5i4JjyY4fkOdNeaBaMDSetyw
fR/tqJZ9LdvYbwaOuUdKYmbkqSSnX4wcGOGfc1RN6JQb1YDwo9i7PvT+ddBdt//Qw8CtZ/eYrQri
waYfL2vzPXroTUuMBmkgXGgs9zX5vGTaa2RHqDAsH9UnXEXBHw33a8Y9d8jPmK3Ea0old8ImUTjx
2N16hMSmNLtuN2to+8J8HgubUCfrK3b6gTCV6y/DwSjDbiV1MYqCamPcmeYpqY3PVTmpN13dBPVK
6NjoV7RGQPighKjS+1d/DLjtzCVZJ5lZ4xv9VwreQ+YGjbAzdQNu93DC/vS4EegCvbv+qujhqPQD
eKwKZG/8jf3KSuubl1fKHHwAlv44uCyHZZjr7OayGkOqtdFhLa6QNjCkqq+4CwxwDJqU7y1GzPpz
ZWlWUKajzT3JboBASHuJARv4q/H/1c8ev2TRht1WpPWlDvXth/Ay0XjZa2mXBAYX5NUcGbIMuEVj
yzstObhJmEAsx9hvVPGvjeUFH3M+VHEBO033q3foax+FaiTqjiAgRyOwtMGCdI/iP5s9uNNr92Uy
UHHnjZarvV8SbJCqGprHRVYnew5GXOFtI70/uIJNkkb8x8OebASttULrlhrSYlqAn2arneO1yQ64
YoQWaD37UZyeCx3hSL+IvZkNrn1TgZgnlt+PzT18VIP3dmS/eCOzgN4fDyd2negUITRhP9km4cTD
E7EQ+YGMjI3IY0ptqmiYtrQQS99Fe0DtKfDeTjeuFbvtdI8KKtreeiEYcuIEUI4lEGCmXBO49qL3
WwrKXjhii/Wm24FFO1SgJiY8AXgTL7uA+6998MgOFTYF4sm7WWo89Q2yda84h4oOBJem1Mkp0iiO
u5fT/WQwxrlMQbzpLYb2ARm6BMOG1+MsUuyt5eRHHORs1P2tpW+2s6QkwLPjZEPTJHKUuk72HOmc
BXqYwMHWJ8yIxmY2kfevID1G2vBBXMMlLD4pk3Xjd9n4qzEYCFfEmUWz8Tj/AaKughZJlIpfs+ma
1VNtdw9akHLgy3I4hdqj/Qj+znIgXC0N6TyiKveDU+6t+omJZxZTmu/K81E58Irnjx4EAcfyljQI
Hc5bFFVJgDKZKiU/+rWIYPE1JPCFsJ2LalTR0FHe4lo/ke/SCFUpN3zxq3HYl+maQoklCxd7UHnR
zF3aqjSegV+84p6E4Dp3gHS0x2PI4uS+YpymXQyOQcL2XhIBZZPQ8+9I+8XNWtn1sdvms+3GcYXa
Ltmmv6y76hw6lCaLjFf82dObRyV/f6y9pnfcbb1/VoPL3hNz6btQ3h0fpFkZJ8bof8EqVNbK8thd
jXaGdeY20fv2n+gv3nfGYpNP/y1IL/WxQl23NK4C2M1eGS9JkEFcMSRmegbb2P6JbIIIf+CJyudC
ZhsEF3QxJVnWQwnFH9V9bWrJZ+C1PWqjT96LbgRhKY7A9MgVcewGFXMA7wQWXgE2mJRT48TkkhT7
GtkvHzII+N6xSxGOBsOb4u2f2IYmn4inxon2CBjKX0DxzJcij9CzhtWUj3bXwMgAmMTb6IymVsfI
sjNS7iFzYYMcvTYS93Q8eNoDGHhQkcHzUQIjGBZIe6ppEJBfh9Sk2h3mXk+8uh/yCf83A3PmXxC6
awyVFRK5Ix6gSGPvVGtmYL0dI9XqBxv/1jJWH2++moUq27/v9iJI4m7cfg3KXcPp9yg2wdJDenkL
v3xsjl8VkQ0evUdzma9b309gP/FgFDlbHo/SMlAW6zsa6eba7d8ulTXag24mAtnSmkxDytXaoJaE
bc7BW4vQXw2nxGBTEjyurTpnY+OXyKLeZZfoowqry3mYUEsGY/E0HY/zcSa/tseBnTujquIOdCIG
tp5gRMvDnpVXORBVcliKr9yIBjOFoCbZsVyd7beaFy1r7CTXOPGoRVp8K3ar1h0neB4yRKpcVaTP
N3zmC25AETFoai+MsJ5ai/EBFP9R28NNA+4Jeo6tBU8udjqDCUk1awuRYD4Cf9al6TPTpGQi4q9T
TTLpnWVprzTLYlkI4VQXXjY5tSBruARVi7grZxAc5dKFkTL4t6y4rtFfopZRk6p/7Uh23NTYh0ed
2ha6IU/BWRB9M3W63Thsc3/s1wX3LdvnwGIoQfrWasXIgNXeaHajNOTWZ8pojhPEtNPDpHBylBWV
KBhsmG1s+EtAtdg4WMdstWzjhhQ4rtFA9bDoL7HtBMpg20KoY/sWfa5mIUq3dTV0x21dJ0rdpzHS
5oRsHXBzPWKQ4KozF3L+quPwvAJGprndc97Gx24IwWjcg61mI1uC/v6k9zSV0D69V6oC2DfHgsaw
othUhMVlXu5jTktXLC2oaFJ5BLlAUOA0JSB+46pErHHCWbDarWF3JeI87y5vjQlEUkvInm4MheqC
Xaz6qeZjHftrhHrkjxffsfEyKODEzxzm0T3PYYwXnCzrFJh7cBgKs01t4p5og8Rf/r7S2EkPl/sm
73C4lRwrtrvQzfVKMALE9yV5EItUifrmKNXB9e2GzZlrP8a1+PES0+8d2SLBcYiaQH4vBml6syaW
cfUvmm77i7SE8u6PBMjojKrZ8WfOTwzjDZkyWwhxN1gxiJkW5uDQgAc1k8uFNrb5NqUZOAitDKrP
ydBxVvEe4Hhg5+yQ0gV6hA0jdrU0E/cYwquTiRPq67YiCo6Tnc+XRa5F5JlHuJ5oVdtbiCa+dFew
cPpVcKyf8nHnEzES5bRGyA2dutDFIF1uu3c/bTqh5MMMygoT6mTrCKOZkDsxW+QZ7CP/2p8VCvjC
IyKMTZWOyXezKHI0i3Q9+R0MSAMZ4L30G4JrdYnAtN8xttdLUqFR3iMj5qhFBQsPupm/M2Vnmgdb
MqagccJFBbMwmGAPZ/u5OiGKWRFjwBJwN0NE9K4a8VXxnuxBepZnDGHZF4juXVuTIL0Snxp6hjNi
+adKNvgRgAnIbNv4rsNFZ85e5t3MHQNbmZVLfnP+83sbxLYbS/PfMehG6vQKs63zbZpzVpkyHBZn
lmM4H0kMv1yWLpsZbZYRUE+K24Hnk7g5guZzxF4ZX1l6RQ5m9vJm/B8jl27HZK55Bte9BiRuAega
sHgjRch7ZSWQ/nti1k5efUCZeaB7lJcxXhWiCXHUWBrlf49jIdmUR1zikxUn5vZAQglSbyJGqbB2
42ZACiCphyAq4QKdbsK5XU9EgWYOSx7BMZJwqUgozWZ+TL28FFCBMmiY2nqNoTpkaB2Jltf4yN3p
nNkTs8zkPaYIBREdB8zSNnPKjQ/oIULQW/uZ/c4CLbNd/bro64UPJd3T1UzpvvTfK+L707yFbxwp
ZE4ySk1bdaj2F55i7DGB+FJ1lLdAQ6dTEDsNLHqsSEQwuhDzJ70cEmwWWEwmVk1gJdB2UsaW4OQo
HyVFcT5rYbvl5AW3Hu2v/vABXztRi1jweGpLXUbxq+AvLMhPt9pusBB4XwcjPZD9sJVW2IyZqSfD
HwqH08Aw8yuTl3C8BreQnMcjcqG1TTbuNJwyBDqTyE/MjNpk7ciVGQSxCbZp1T5hzORZbiGJKAnc
bKVAGaRXgvHPqYRXx/bPO95Jejd3rHYsFFzhd4kAXn8152rQ3iTLw2ON6UxFi4qvM25ObPZ2ZKht
q1GdGIBK2qa7bxE4o+7aY3vLZqtYKguYbDo9J/jDDHUufKbl06x0DVjpgK1wTJJY6y3GBI/Q3AFk
HfdDwrryONVFt1mkTpB+MLuUyz/MJ1IFSlcgAecfa8mHJBvQKCVwOCtPW5ny3ycrQ8kbbG6fZwtx
uld3OGlXMGLP4h9FB3rF0Gysl2pd/ELjPwPH26EM1fzrv5RcPg6Wk7cDoOUNaFnJrBAe1RZOzF/7
A3mpy0C6FhpDV/bUfZGhCS8LvvSLUpAd8QzWMIl28b53LVWWkWs//WVEjBk72TMDA2XPtt3YT8mg
2sOiZAvQhKBSfFgVjc67HkpU8dGB3ipr20yeEdAaQgvENdWnsqkEZ1iGLit2uv3mUV61AByfQZ0T
M6ep1ARNzHNH/0U8TQRpDr90gygLYYiFxrpDK0Q+xCkkXyu3pUF96G/qBsBymS2AIqh1rYRp0slz
TV1YZjOUlcG7rA0ZRFWnwXV5KOQnajcCR8hgKuQEwoCewQb5O3jSwlAiYTfPXh48SVIQLJt8YO2q
/3++lJkaLUOnXz44py9swjhc4fiCn/JfPfXnhsDaU3O3uoNLsaPLghGwKl6yMikvKtIS0Exl+HL5
BI6f5z3GFBXu2hupd2VOgxgpnVS6nkXDHxwhPAvbSwWH76dzDc30YCyGUZQgYlpLxjWotRBIaCyD
YPN3DEaFetdRuLOSEYm5nIfrhcfIb9r0FBpJJ4oK2WoXZtw3RHCZqqEgHZI/EzyChy3PugZOt4P1
A5W08zpWM0Yrpdkz4GRnw5hMmlvSkrYJQL4OfodWeHR4OUIqa2gdTFTdLqU5dndJzuNoROh8JWUx
4sgrdO6plJzn7mT44eMII9X9zkPn+tf9hwqSFVu+q0kDW4RzeqsonlDSyIaIJLABpkzzjo9GOeuy
NklcS+RtiIGS4zKXJ1RgEqXylvtH1gbNWI5cX4/rOOcECkmpq2TngrK+BGlrXOfFLvc6WhrFUxRm
QDHM26e/UcndRQo2ZTDk1iuR5HjoHGAveE9ZxncwrAdDjPJj+xI4PsPxCNhTbsAMd5jLiKzWK3H4
W+INGYpSnIN1Z1d1RoK5TQDheawam8AlfQrdx7HGBvIKvd4cCrnR79Y2QMMeeE0gqYZzgrIPTv0u
KjpyHbPOKHBS5PJe0WhiwHw9XzWPBgLo3Nmtz9uv9tzeIRDy18aG1LdAZbkzWkcKOy5k8jg7Dd0i
CtLSbogi9uMXaq4zwEgEzBMP/GV/JE1VeOg13TqTWg6TKi6+bvZi+o6pTD4mswzd4S7QF1Q5M6j/
4fMJxlz2kLVHf0NbNZcAUoLZ0EC/Dp3K+e6o5U+RuwtmCNQMoJxn4ujr79EbfqiRHLE03VKgi8Ow
40mR6DrM0taZsdusjXCxCRLSgfS4BSvorTtrp5I9pZfnaqz40/L/Q9VOQNJLO75Qn2OlK+YSSWhU
d5sm+gkqSvMBk53oGR4I41TNq6VMCyfuIypCqcUi+OjP9fiMZ1NBfKUQQTQPsLTLs6Is08hjHokm
rotHwkWoah41tcC+zFFCHCJOgxWuAoAkpFko21NF96EkdyCiVgUesgO0AxmV+YB1qaLxlAqRF2zH
z28zdg+OrPwbeJWWExso3nxLwAheCNc7Ccw9nVveoyqg85O+20ZUA+uEFLQ68UBpTkTQAh0gMhST
NrpttmL9F3Iz9AX1XhsqlxVgqKZS/bu5l07wksU3FkaqICNf1/W1jpFJqlb+cezCXJxTCyATtiUc
ia+PPpLAv+RsyquVsxGyPyqU+1tBpJcwBdiA2Qwf59WaB8EhjlKUuu5Uri8BGXp7D9EIqeHtxrJS
3H4BNh6hcNmhTMNkNt3YT+PNnWJFoHGyzRa2YvQb10Fq3ueW45Tz7fnOgZkQnt1ekySBslC7/rh0
5rh2TfPdsJlribA4wyw/8YteLoK5XkMSQmAz5OCFe+L+7PxTGF6/oPclOuSFRaEe+h5RZOhauOIE
xEu+MiJ3w5K4dRyYxwBEYm9KrotquQ+dI/VmM/YdG/9Cw6rSmbq7F2VDWdrwXTqTcwW6dhEKumy4
ciismnXHlaMXBB34GUG61HGvSBXPAG2DK5+73hBLA0anszftGxp/dKyI/PCvmhni895gwWWpB4vP
TdF+j84ZFFvf3ue+aeDLirRpYt5gEVzHzPH+miCD9gp4oBCcFqW5NB3C1k5+LOV/KfBr93DLukqc
RbU/S+5hVyTbWgZtUmA+AGPTDitp5+r+5VMHUFQzeLoqMSl+oj2KCy6EwiUEgw6aJ02IKIQsLmZx
vngoXetM0HzvsYuhWu7WRzqjySCdiKgdJwC2/qCuv/PEYEltrr1ujX3lBPMmxCiod/CZde5fV/Xa
suJSRbgNuceR5QIdMH8Ztimt0/VGyldFh5yV6fVVJ83JDs1KtWVuImhdTcXk7gNUqfYKAVh3rT0Y
YiThgGbGYh1ToNN/lIcgJZ01N/CEh9W55OiugMbUhQZ+qex7opBRr31SJ2dAauuQ8qsoqEdKCXJm
O0ViPGKqNMrCmzAUQdSEt7oyfsj1hfkEbRROCph74QvCQmnzbu09gMuds15pPhcLw6+xSCtnzTRy
8jhqOS2qQVn3aSupieo5bhbxUW2at3IWjcJ9sg4JgrMSBkKd4THwZZHXmmXNF3zySO5mUMlMta0X
wSz9ErzZviiDE491BDOpaLhCo/M+LDrXOa0zHtoS8ZmiR3hFgYg7jX0pbIQ6uaasPYlsoeXXy7eY
0cTNKhcRFH6sPu++to52HYoOWRgoCUWsu8a9Ds+vuxyhP/yIjfwecwrOJ999trXYB/fTvqGVwB2Q
D8NpGo1Tc3zYjR0VXn/emKyXNXttwwCa/yJVQETzc6h0g7se6gzt3R3VoUStnyMTovBNwhkubeaq
Ue0sKIB4fQCYEpqyWHL4JzmptxVaXrHeAA8Qq/323fK4C8b9caGz3rZZljlOgr2XknfkAmUZSM7X
qK9yV1qVc4Eiu0duG8R1ppd5hkH5SjZata+Vom+hvVkRDKkWHb+rYcSeJsmM8QUG3KrlZbIiZtli
RBy6oyzfR/h8Y542cZG+vv6OSDOCz9ZJctPkvGXV2A4S6p9fm3TCvVIhmJ/c6zxPufYa8QIJHlSS
Cmshbm4fyxu0w2AS5uj2QFYra9N2Frwhkeu4+rPHURBOuosr/vuvsJFz/1Z/57aFXsifLoql4TJ/
QdtQUyI4AXdQugHeJyhn4DPyhxOgqaOXCkZJVPf98MT13NFcnM1PxQGlLOAas9f3H4Eci8wjVPds
i3mpnmcoFaX75Xx6DfsTDTeUXObVAuyBuDdDePE/4w6JixP5Z0wZ7m5lmytrnJDq7lp99aKG47oH
le5MakKIgiOgN5pofuXnkq03ZpuPbkuhcOcjmNUWmrukUA/sGtpFyx9aDpM7MfTPEOO5S21emANn
nbuRf/oOQVGHV9JkBRi0cMEM6bDsGVrnjSv1wYm/zj5TucQS4UEJzzoCEGEKDPIBaR+krfXYz2Ms
E3oxhKnuPGP9hogBL4bkpiwdHUr5kfiUnYRb5yNsrjWHeg1LFsdCfwbWHYnek5OnR0EFUiUhf2pN
QL4+zuvVSa8Z/cjzaBm+piI0X1+VKv1ctOjjmxgFf47/lFrVn1utmNn6V76e7rIpvv5uB6nzyA0b
pewQha5AJ19ZE0L5tTACLk/pBTalJ/0ixN/DFkigJjN0wOf2ULpfA8LsvP4Fa+UycvnId/RQ7BUX
kXKX8hIAzaAxUeAGPsXYcmAjAaDoQW2Li7ykRUmdcrKhjXfCGeu4c+a0yYnH6iVSlu01Oo1ptVjQ
JireCQ+KBE2v54qo6Nsd/yR6J424sv63e9VROM8e536kH8K8Z6JlIH1m+06wf4LPycjzaMvVvb7z
i3tc/IyUQ0M4ISS2FPtGBHnsUK9k/4zbxmNjjqhCKlbwFBsOU9wLA/VKwBTc3gyonFCfCKgHpbu1
lI6S+BcA7isqRIg6vNgPjOpgGC9KYuEbsIOXcvuw20chfWUp2CE4i75mp7z/y0lJgnF2gLNBAY7J
D+lBnVR3d+FIa93OW4PETlvzACCtEaiNF94VdneoY9vYKrftJfPJSUYLovS1IdtSyznlL4j/YPOP
FlbFRRO0GINSV6RM1LXmMnHsPl5wnZaKOkzZToT28fSDgsjdunf7bHZj5ha6nLoYHhmZh4lpUau2
ESJClznDXMSu6WpcyMA0JA12pjp6zv1XcMHT0mozYx9ddS3IKZLqLe0KgpwjvUL02Dhcrlvty2GT
P/CpsGXh7kVmBDlcYG8Hlc1EvhDqFTFBy9fS/wmsHksay4Is3HR2poghabhX9oVN+vQUKxLEYZTJ
y8Tye8+/poSsbmTpTr6ScmKEn6SrNB/TFbltaGe69vQAJ//xVF9iykRMZY33OJJ2EDhBtGCddB2T
QxReu9dZ5YDMw+feX3tGlin3Cy+0wtgPReJ2X0CJ0Ex2ZFZ3xDkn10weZIOxs6AMDp+YTo+yjofi
cI20v0yv6wHaEORbV9jl3OSvwVfaYfc25PCsJ841yfPT/BUzF1jzEmB3dLAqXZTByrc2eRfRTClH
h14iMncf4wiipl+wCMgoVa3Gnk/Qi6133SgpeIK+uleoFsDh3hiR5c3W1r+dG/IymNKwkrfeQI0T
c4qUxrG7Xetkf5u2hxr0Yk+dmVTWCoo3lnS1aAoJ5/n8sMpqEGT4T41N8q/I7GBM8f7DKnwnU7K3
Ngdzgc5M9AmsdVgjsPYWzcsnlF4Je3zT9crOZUvz4S1DPGttCve8OyD/G9tCj+d7DuW8oQAD72CT
YQRJwhC5DA67Ut+VrgpDk43sWq6wKfGmb4NmYKvj3IDifBoduxoeHvqvukKeOB58eZf2UIm3zViI
DYf7FArOHtG5DVmlxS+k+PYJwJpNGNrtrVNqGS+SXXkqqrXXqlwTRAB24Nom7rdweKQmHAa0nv2a
PvvJccrXs1SkOGq0TpGgIQ3rAH02KNYBZnk319E7F/IlQFoMIV/qgUWWzRsExBYFMQ0LuROi5kWW
cyeO7B9hwNEbMQrktnOiDT5s5lGw0/i5nUaU7sxxqcvaMVdU2GNJ+dagLQAadMVxgvH7hNbGcvPS
LANeTUgWUOceoQ1p3nhFpje7RkIJvRlO4W//H7LgMaqesB+A5W+fCY4JAt3/23s9Wmg3CS0WFvmi
281QG4R1jZ81ZSr0zFRAtQg4coE8ZM/HGNUbnLzk6fFDyyrkFcW3cOKlel7Ap6q5EsMglDlSoXfK
/6YVDtCs3NeqshCRVMHkGSFuJsoKzyOj0brePXW1drfK62oGPPSum5coSrbI1YWPrGrZyKzFdSAV
lkmiV+/RTbMnobq3rW3BP5imUV5B7dWaWiZjpyzMp/i79QaTVsV8s6AvgoewzgBNRSCnP2ueN5xM
68qar5STYtV7HZA7ysNjw1Rh8rOWhprIcHh0DOmlctNWqsJQghpQAGdb/M6GJcKIhw78F+VSGnmh
zwjmhbYXD+jKiKMXU37yEw/eoXBbxi8E2hABuJaghJAkseSRsR3L7Axe1W1HP+Tw1k7b2nDTV9lY
BiHMxnmWjfjx7CV44obNgpNn/i/5iIn2/TxaHichXPFfkNCgWRjtjfWy5Gv1W7sVfX+vbGUlohiy
KsGNBkCJWtOqUHf+l9m4Bvcaipovj/AIgX72w4vq62n5k+qujlsL3Q3G8ZkYB4crKHq/zh0EVYBA
ZYC59NuMYrpNM7XMFY+Tmcc13OuApY7NlYJp4GqNPx/WLLsKS2bUrAROw8PiBq8vReZnxvGr9k4p
+gDcDxKkTFZmuP6qNwC6Pr+RguHjuMForrh/nfU3vqWhvE/bCqLGevT819PapKFHkC9omyn5+CcD
FO2vzWXghrbY3iqg4L58taIPPEKj2OsNnvUzJMXzAMgLc9UEYG+OlidBNWAWvHRoquXh+akU5ZzK
HcFLEYUPpHTVlr1MOx3H9v1s+NjMaZ9ifdHWb5d3hSbfS4HUQyG67BmK1rMgwyXsy00vhr2oGRdB
jC8g224m5UB2/uMOVhf7uVb3jg7WdaWM2OKAekXqVUBjDDa5rVPtboqvQr3urjlHg1m1hd7fGTIR
JneQ1P8oK+58aaMrjdSXFI0fFIIk+YjoKU9AB0aa60SJnG6i2tnke7B/gVal5ZcDe7fT8+qH/4Hd
Uj6ndpxuGFb0GKfQ8rCUfe2iCpuIZavQwd2BeQhX6mrpKYhT1CwNjMiEVbXhe71HffWNxw3laspo
VWRZZQjtbgqKfeUQ4VmrFuxX95klUeHJiYPW1jyk9rEUZ3jA2miL0+JedfS5yK2d4SwA5stkZtpb
iEAEz2d8iHK56iEyjf9rLjTNeREMKe2prhy5REHDfpTTO6FJXnH0PIbsRZg2BRLBUK6yJv6rUlz5
OIbP3RUlvWU/aw30cUuLsISZcSKGXNFEQsMuINiQbb5Ye5wRZ8miB/Oonrini5e8YTdy/1cKRmaj
HMU++Br17+7s6/aPpBcLiaDpvv70gvsbHxb6oA9TZ/sDZEzkRNBfxrO0+cyhd/Fxbn7kw5HHOxC9
Wy5QHuviMQri1FslnBqlmUriOXE1sFYXnnqKftZXJm0wNTdfWMP0Z4Wqub1WKMvr42P5Y+xUt9Mp
i+JVMNoKAF9caUhKwMJ1i5lwbqTj1Q36xC0bZA2sOFilps6TI7RY9DPk89Z8Mhte1br7f2+VbA6Q
xsiK1yJQKCPclGBUMNrWtVNSpNKXdFZKaSjZ9Lina95VFbhwAUIDUPGvpPqlaKprurVqK9ZLbubw
0MgDDckKvU6fUFMsKWseQbIEiD45acAtFRmHGfAEG3sGraJBw2Qd4k29NrUfU6CNem7ht/m6YGek
vhRYXziiTrivlgFmQooxpm0azCiDoZD1aREGBgrZcyZ3xmKgtvmKwn3y8Hppn23MyKfTYoTa2cgn
B2SOkyRwlrz+4mwufns7ORriXNpDopVjTuHsu6CPHjhbHxhNx1CStv4f6csZgczNLyEGvBSMIY9P
ZIjB8ShtvKOkp013iWDyGDfeWdDnapoe9mbD098pzRETLkymMxYvw/8t1v5Kt1YgfjEuyy+5UvV7
dDMYzOOsm5jF+0YXthCubF7gUTN+lK++b1srVvmWRcvD2MSQbWzFXyLv4x07Lc3pAjb74KuC7Aqt
A3O4xTtJ+RLemxJueg8wOhhdodLOPUHsrLVgD4BYWQHzXHGjpr+g6IPkbkOnbI7Voo2Cfisdf7aO
SFNfhE09mg5Y0JqocOC1K4FCWYBs2lSsoneWPPHc1Jm5HKwcdlPwTzZU578iLMZ+DiLCzB5dz43V
C/YiG5cy9b8w1jBzHz+HQqg/xZokg9jFSlKFzIBHLiHWj11zz68LZyMTqAe8TxmPWqIJa0hTBoPm
XorIFY4bU3m2no9Qf2BzHQz4J4jPyNeohlN5YtOGMeajCyY7Qecs2KataDl0V/OootL2LlnB+Rn5
NYsgVRhYai9GuSLLoOtEj9q/fQAleXMgRL34moCaRX1Z7LKpJnip8AB6bs6FyHilJBglYc6Urycy
Q4SgNzxVOmypaEtP0lYgs/Ac7W8GV6A6PNPeDhzB8ptv2S95ZPKR4F/ybfgOIbkEvGb+7fThXKPc
++AMiOkBjukhJ02KZZq+dPsgqLtPYGkt5BjfQVM3kswcm5d4h/YbMx/baiMsLXRdeDzdp8xTWM1p
uQ9KnfK92Ksmg6A+VSPu8txR+dqVB6J653rIv/0qk57vHMV3LZEzw5EtCEqeDZetGHVgu39KpIgE
KQ303djJNVr7oGMZjHP2w5qF4DqCd6QYckfzvljHDIT3gzXzu2PStsfmNjoPCe2L/ZpXR8zVt+Dw
3X+Qn1TwGFKTQajTTksANj0hg+4XtYrZ01AswwLNqGk6R5lKO1XOcBJy+V0aJjTK/+Y9zdXsWCCf
VefgXyN4UXF3NlDihYfdIcEGzqcKFAAgjqORxi1xh7wr7+xUEnK3Jrez/YI280W0KTEepSZWOwXf
i0Kdrt72l2sEza8uDg/PFrvp4rhQoVN3o0PAQfHOrcPN/VK4GRUyDXxAVrJHOmuMLLrlwn3I49bj
d5s+kppkQzqWjd0DWGT7mcDr0KJNTBSK9Y1BXfbqKOzqlIqsQ2TaTq7ebnvmzGk2gHLGQyhI3P1w
6+rNNUBbMl4ASEEjiGBwnYhlXwuzlQTrE6q/Qw59WQlvFmvIFqBATU1PUwEH6cnXPGXA0D59fCsB
j5CEEg5/SPLebHlJI2M7J6PY9Rm65PLotrluOEBVSTIL/EDsQ+75LVY3BfXAF0NbY3iDWzu7NroR
QXU36o/dFZMH1YIZOfA7AunYE+leFgQuljzdb/bw3vo2O6CH+obsIIv+sqd4EvXpDKXNm9NrLZU2
BlQNMetpHLOhKNj9kezBU/ie4Mwr5yuX/dj87bv7yCHftk+6VOKA4/pz73Kc3Ce3gLopnzuMyUqE
ta2RXTx2M0UjT+HJ1jmhDoEXp2anWZiTji0QwzT/KZN1pULMwn4TCNH0Q0WFoQw9TPtHePUKvN/C
bX/9XLgPchYulD7zDvsvkthQnB1lqwJDtNA1jGQkKHN/6I+rM8OB10UykQsr0qWzNtoVjxs/JTXv
A/6e+Odfnjm5s6ZgfjG185PiBP14sOpNLKQDCT+hiDH2nPsEb0Cqge0IFvbbJoi23u/0GNP4JIvz
+u4XFv7wsiMLDqaaKMKKgcOLw52OrdCU6Bq6NAfwkH2lz0f6x5XSD426wo/3QkVLaCgK5q1St0m0
NMg8qWjLExWERfctOSE46BY+8hvJb0c+sJsWWcEGUNmv2p7ZW5YDyNw+Lp5pdV6gTMI8N1tzkFqm
sqVHy2r02yEer/fJNZJ7aAuXr7hLbKsQ/HPVCqrn3rm5noATeqC3imom7ZYGQHXTyxEd/8wJNj0A
uc7GghXgTLnfmTGAAsK3qlqfBfXzYNfYJAGiPX/F4zHBaee4thgfiVy4pUFBRkUaSnPSfAYVIAcy
ByIySMKmH24u8ZS3UPSmbbQnc7N9Ht67XBwm+N6L22z8w1v6Toz0nS2zqfMcz7vc0uLiQe/G/Rto
x8kIJ0p8qWatMCkRQj8keeFpcY+f8xZSMIGqKFWqi2Cj99GI+kpKY+wjwUZXfxqfDg+aM9aLc91M
/hwptoTDjz6tch9VB/Zg8GgFiSAYPmiex+8ugNqCkcw9o2xPJLQrqkonF0GLF243PnOxfJg4gp/0
Rw6ol6tUqosDQSeN9GA2s5twFdbGdFx3ANSrXSKfuRY3sfSYISZcKI3t086zENqtonaw6nK6wEa3
VSkk/4Ehqeop9c/OArILxqlMlamOi5cwm9H5VvEYOSy1aigpIE2oCXYXEp+wSnPSrYW++fdQS9B5
XnU6+HvNNSOq0HO2hUdKucbEOSiIC+cQaTswKKCVExjLSTbihz9JtC9fCGJNCyXDbczVusL0xWsB
QoP0HgcZHfEuiEoYgJzrjxUKTjjOG78N2jhSTPLObOWICDGKn4oYZq+QA8pLspPUfyzN9J7gpXbG
/poEutyGquGxcRcGGb1Vi2LQ0E4sEi99DpwCeqkgi+A5O3QYLf+TQ7KpXjP6+6GARuQJzKENNrzW
I4Gb1wLjPOrJH9ZdBazJnex6oHp0B95woahFLBhe/mERWM90tQds7YSLg7qNTatwQm4Y2JSKqaxT
iw0Oh5vJanfiY4Ire3JceocTAFEJ4NoEtMuymrp6VCY04NmyyhWhPw3clXGH4h2QWHkwHjCIUplj
0q0F5Wr0W94GWxNLezSMfeV7pv8NFJ0DQCzbgBqwVi4TX9qMzM/y5GhEz4xvSNoO1ZvQyCTBpKBC
VyyUeveGlbqul7sawb1JaPq8lYWqJGpAV8uKd6rzteKvujegVCtctNqjyMJOP4Uxopcg4eOrtbbm
1J9EUlaXRqAz11Wm5YHWWTbewujF1gm/cD7AL+HhRN1Q2ey9nXZUnEZIbZ8g9IKt2YgH1Yw4SBmh
bO/Q7E6WKkFN9M3DnOPQXBzcTn3yhLqMf9ucwOdb5sz8zNFKW4Isom9i8B/IMwGiBWx7jqlUknwY
QAzFo72hrlaFdygnc25GmZvBGOIjl+9YK5BJW7CDjipiOyzJtPwfJJTn3sztESLmFucHnVJYoLWh
dk7fbehHfj85hO4l60TiWgPpETeJ2ej962H02WS1rHe2X/BoyTDVeJ1QFcgu9nKhLE4SEaDoe/xh
acjDLiUA1oS+zntUl1ad7ded+JtRf1ybzeSitd6C6DW9QIYS3aQqWTMKiO/PXdw97xy6WBREf6To
0t6ehqVw7aSdAbLVak4NR8w+h82kiFixEvVaR4wX/OAI18CIP8gyu+tjVuyYmQxVp9Zpj4kmqRw2
bBaVd7pU34jfvMJtg39MIeKVSJcE5nNSI9x88dpXrzbBLg4+XIRp6o0F7F+sAu/MP3/MjY/ajSkH
BbdP4CkCtpLZMbUGU5ggS2kiChFPwuhROPof5hoOP+LDsGDrem5LmaUGa9yHFCU2cDMzI3mIoIfz
nBxBnj9PW6PxvcOf9Y96O5sxDYiAgp1YGAez6gPAPjn+Q7KT59cYAItIjbWxlvdycshmYPojcEWk
tNLU+iyTZgOuxSR312N4UaamZ+MmPPKsfiqhOalpn6VVZ68lXl7VKiqgrCLDEcu0vvMRt8l2Qfz5
5gcsv/Frx+viAIbwizdRpYTty+9ArN3xv3GbbtPmakTK6HNpX8Xily8mJ6Nd97AGJoe1h8OeLmJT
9wH6xL6i3HyQ+lMC6qQVRlZpqc2uGJSRHYOACZjOOTYTP052zkbkQdp6QSvYZx7zZC23qTHsnOFQ
/7dJktJpprUy0KsV27dSXQ9RCdxY2BRe+qsBt6DHQ4VUKcmmNMBvBgfNUMr/PaPNLeskwc3Hg4j0
3ThB7JnpkDFRninKBDr4oHnyPBOHcNBScEfUjvt/xagAiIoCcqNVe+lorMp8UoRpSdXiGPWgHUX0
Q1lErGmygYQtd/DqHMmLnZJ8ebCmBUs8U7hc3oF1VaLwK6BtngFOvw9/fnCZC93h2QhiSoHelOeq
LjGX2s3JhJRSWil3lI8jOvXTZKniNWg+Pqa4pu0s87rWbHmiW/V0YVTksW9MIfJmn4nJJfsJ9UKD
Q/SJ0Ro6DV6hMYV15hI8nejnSCjHJZ4w4Tfmt7evBzOraK3YcInVUOb7oQvTvmufvYcElvV5aiAN
FFhpLWdIH66B1sY377eSyx/V27D0YaCCzTt3kLaidHGCT/eSBlQPxipcb/++sFf2q34Tt5q47ATP
cZ0LkDJ1FvlFNQqV1dlYDRRf0LkJ1xjtghjP8bhTDnodVvx4eG3KjRoTMQzslJnpMOMBxbuPWeYm
eKvIji18EN2oV80N6Ds7iOMIMtuOC3P0JGlM7lAvbxhZu1HO78mEcXaeF/N4ux/wdBLuX3VCOjkp
3N36lpx5RBhOOBoicVHWGxIBlydJd7ZoxRv29qzvz3I/JseIeDlRD8N2RdlwTdoMawULgjou0PYm
qRgfxYNsCJV1+c2ZhR2WFyC21v2IYs6TeviQVvLa1ASMdFP/Xouhn604FBto4xONAE9RlXp720E4
eLgGDb8aKHqaSqjjjWNFXo1rmaB8DsOzwFGDu6ILd4CXVsXzEuuy4IR2mXduXcvsjiDyH+QSSuYw
50hTrznSmmqoTgaBSMn2x5unFpL1FVzYe3YQKREdICbVkQeyasPddyCdMnjGRNUvccLWViu6bX3v
3T4s5sc/x46Tc2qPcNglDbXqA4WX1vHoIfSaDfR08QcNvDag4ujEKpHcRt3CGv6UYuBoeCdbksg6
fFJTJ59wyO6l7z9J5/EZHSrvaGtp93TNLPgm75bk7Fvit0zwJCscpmmQtrQltPp38sTDUSdUMNb2
zHMus+p4+Ld3U8Tsx0qfEW2CDZ7/v+LxFaCPRuPxWw/Wm7wkvU4SxkHk3DVwjuNipkQxcjnhaUTS
8dImucdoU04+jEAUcjTB3gwY+mz8GaJi4AeTK5s2PSGnT0cVapzjtgVJaIX833RZo4Qowb+QbZNa
47yQ90zQ2dfzd7CrG8LSCN+y7NgkLhZ9kMutdio/1bDBG5krAcsEbU1gMUI28Lp57iiTS6afbhy/
6LJO5y+2tP9/8EmjTQCylr6bVsdMZl7RLvVJAjbd+x18lxHmvHCMii62E4h2/xTHJX+mhvxTWd/L
5MPhZ8UA1u2fbH+yHDaqigS6SY77A6BOK9m9mWOg67cd3rXKT4AQOYIybWqNz6zfJx8ttFKuF4qi
PWeYr/c2b/snuBUdcZ+oAcaJL3pxHO9QbqH6fkGC6KkEtsGFaw6kIXZgmMyaRjAeN5fxztPzUS5T
qEYd3eIR8fRtUD4DHQIrUV98QwANPeojGCQQNHBIVlbrfFhIRa5RSSvw/WQ6eEx5XZ3YeYbjCk6v
g3ror/LKxesNYWdSMUeaD5Kuy7q2/1gFZ3hDAsdpmSEwSc/Vtvsb0jVYVYvT9aDVC0uSl4NEOs5I
ZFsvLCCfeX18aP56CP/hXe8srS4Uw0JnVXX8OFvT5dwQJa8Ac5xskDXc4loVyAYpILN6V8mDejGT
yMSfRPkwaakbr8uQefIkNRtXJ6e+nNNZeWEQ7qaKbvhJt/2owfNJ87/lIOm3XbMDCmZIJiYnNroq
5BmcTFhqqk4L76hWigVknuPI7hN5xmb8bIjVOL4pd9NpyuxLPMEgtyKPMzttHszNtrT6sF6760xK
yXInXhNRrJ8K9jYtynqFkEtJ5F1JO6ZYo3OrSpXFGPG0c1yz72YddmANkuXOZRdL972reNZF5Cbb
shIcouUYjg+znZleor1TwTvm213NstCsNJS3XwcnZGbf0B5l1InZnNV58++ZFnll7f8EPhyYShI9
gKEJcczV/X9V4hkpfHgri3MhgvEexB4rb1Q/6YQmhGMGutkj1qh5GopAjgML1v/af8UhUAJqsKVs
vIK+m8ux0ikMEneKPkdIrEwhnjO3K/Ba1MmtXy9V0Ma96p7J9L3egTI4b6KqkiwaIGaRU7XZFsZu
KRfnmtb8xr5TxcEZu993jiw6bmzgr/iAjyGtz7MpLPpHR5yxhBeSIxxCApVscL5j3rG1d0PMW/2Q
rPWWsYIf4+UD23IhorrZTCOjAPsGHnEfJ/y/V+JPj1Kn7239XQDPs/nYBK044ToLCDXLMBhwssgb
O3M7aFSPb2QIosIBnfP/qw1uE/CnH0WSTVTDmJYK3GPn/eN3M4gEdMen8vLAH9Vyd+cYp4FM+5hK
FasEqDMvlz7yAK35xkU87iZ4Fw6rESazMuvILswmmngtMQxvptTirufI5JsdWd+meun//DSIDXLq
Iw2QnqxVu7odwXYe+sNER2f+HrYOzmyue8Kb84VnLCr3PfjBS5Ayr+fDOqzW42n7o2rV4iJTWbxd
7qhk7GfH79g/ZrEiszG/T09/ArbHZ/Y6KxGq1S/M4Qx1e5I85UY34fr8rNX/6oFwLShbzYs/Z0Ik
8mh+sl7T6enYEBMQEb606bfwCv6u/Teotc3FbCsMnI4JzyLPHqgZrorgmvzJ3jWnLXuztWg7lnOE
LT87A5opVvg2C8/ShWWMOsrJLhId7AREI6FMNewIKMk6a0+kwI9sDBIAj6DDJkbe77KHQlW2iC7l
FdNpUuxRr5+AH03O2Eyyu4K15YcvpCh0xka8uENBA3pb5dlviM/IOe65gbeeUbIPCFjeoPE0Iq0c
UBu8mzDFxlQbLvQY5bt5ZGbTrj6buo8sKI5kSShqk68HkdCVqCAnw63uI5MDn21DG+krHmteoRMa
XN56yT/p0rmb7bDJijowB5xCSlN46GwbaGxfWNQJWlig+vY0gH5nvSLAps/8Xs9dTYkFKPFKg4TQ
wNWGn4OyaySuxJPRfoOS71sL7V4dWILuUvi8oFsbui4CLgzLbzagD1BmP1lhhBAGps0spnzw10/o
u3jOOYXf5snpT0rnqNES2kwX+DA2qqnr7WPsMZyOitZeaNR+pK4dsxFr2ycWYRcLabDEs3Hahq/q
pJ+re/hSXJohT6IUx4DkBAyO3TWqUcelu/GmkPU2teKlp/GF9B69kom0FXwJOBNmadol4MPuzjRU
bCXcbQ71eahvOOkbkhJ9A8jxoHhXVrEPJvv7LpdRkGl/Bvo7jIwWgj+FRrgEDVsfjhpuKr8eDh+9
SU/mAZX7ED8WqUbZTDiwiEhEHH/ik/L323+x2VMLHTUsdng9lB7tcm5BZq73A0z8y+T+r7zZDP4q
CJwKUJE8JB7JLWfRsEpaDfH8jww2SGFbSt9fxNid0pYq+cc6+N7n+lcBza3FvTo/CPQXzbTzaoYS
XTM5bravLJwC5f7X6h7KxXiYTgT2POt+xN+65JIzvm8QTaz0Grr3nW5cMjucp3qZx57exeQj5loO
seXCk7h/F2t3hahrvjs5GiLnS5VNc7RbwXzB+T5sBGe6nSk0CuWCUmwY5ZY4VGy28niPCLYG3EdB
y5CsDEbq+NHRioPUsHlvaVhfghaE8S8mYdC0mAkKtGj5ObJmtE9mWMrq8kAdKb1Yfej1cwG4C8DW
NIW/lM3Y2Eu6xHbibaCG3ofEGnxTsDS5CSAMLzmniSL61yPWwtok5kZFuONGPNZYuRqjsYNndDDT
OHH+5xGEcIsXSdoapbaNOcgRVhMIaPQVwC32FnTkkWqk5HC8am83I9qHBeqRTJjzWa1nQHSmU/AC
QftureMLip74IgqcoyHWR0oYBe8G3sRW50zXQ7+Mz918IO5F2JJc/Zqh5q78lN3AXafv7YEVPD2Z
AfHt/DSv9D8QdN/hHHKkrwDEpnTC4BM6BL/VZkmc8qN5edz1yta9eqNp1dL+sjM+SZdiwoTqZTK9
j43BnwzxrkLrNAEB6O71lyVCGy2jBa+WYXLwi7nhGMWAyTWRbALidaPbbPLrJHvlijvDpAr+IvC6
vyQlrZDedF7v7nnEK17IK0/EsDnDZTp/C5s7mkvl3o5VmRcy/OHwgTIe3TEKwL+vWMnwPrxtReSY
dqtzb6ZYqeWl7mzXedL9wOQkdtYW+ApAikBIu3pdDZZahdQrWF4gBmhKuwf07ZF3/2aOfGeVGoKa
q3cESNJ5Uo497V79NvSuGnjGSTCD1SJaHbVhOC/toCpCRFc8cxc9KWljuNmFKCkqwSCDyB2KxNVi
59zOKkdImQ4wUkC3ThxRsIq0Abh2cLirNwAwwE4Y5L7gEyIoniO5GOru9WhVhSXHpZqTRF+kUKvU
Fuyw/q8JA7s8jN2ZvhrvTQB+VmSsEosB8pbqqfpwPzqi5zGHdqWgyX1xgICE4HC3O9oP6PmFpNCD
yfykQgMS5mSLW9mzv/GO/dQp4SGsIBtAD/ugDfcaTZcBzr2nxbiQCwWHTOsx8RINpBZ0eEIPj6yV
txKPwZiMKRXk4nT4r7TNoTnJZBESrqIifLYPfI+Wua4l7U+GYayQPmKtJTlDLzBcRzw4Nss6sSkR
XceWguEbitdyi9qoOkZuNgf06MLzNstziRLQvlmOlOCIC8Ci7MpKPusGTLvRjYyBJ8vlOpzpxvif
hxFvTVzVPOvPkVzJqLjEW4sNS7TErvqlLzkrYSrEEgpdkHM7ABumv5UeYhrj4+Bfa+e6DLk4iUNh
INGYXITBLm65QyzR+WpwtfT8nbbTG3FGHILq5DAQ/koOkGe/NiMZz9jUdtm6BVUtRizhoESfcP3F
1F3Fzf9jvgEvD4qTBMYU/uNPoXbOUsQQFo6jZhKlW2k9H8cRldo6iwwzHTBKkN82kqzxg+KaAL4+
FN69ux4aM2s6dj4xDqmNgzG/eBHVss2dJaowcn8/qjUJIruNFfhfuJxAwYG8jUWxh6Jq/A99roN4
HEAFb183Ub4lxR8WyeY3+0GIoL6Dt/xnzQMKJFqkJev+0HTWWIpkYQneRMAuMC3ZKEXCtvYvxXEL
YEMt6YJgX6fdeo4W8JrtJIIdzMIJtaFePRt92TPwlCwng//jxYG38+b8wKl24gcNPyHra6kCcyGv
YICJv956O+40i1keCXDXu92QHa+e3EzTUg56XO2yvMJtF085kAeXrKoCYRl4IGyz+C+Cl7Euz3IZ
xcHm9+b8qozRv9JlzFDbyH4+po9rnWyg1ujS0PjxwDGwQFjaAl7LAr8A4Iia9FIGdpuRBiUk8L+m
d6ZKycZYONHFWP1F1S6Ar/UMQ0AdcokhdmiOtZ3K/QBNCPsEhpLux5zKFwCJR3aBd28y65bynK7Y
UK9xW8vi/CRrCsHs2dyQzZxh4ZjiRclCRi3Cf/dTnKz/J1NQP0k34PQs8km5rueAy1shFqa4bPrP
78nf5gEWWOb1h2xoyhsPXdUi2RRfyP28H0ohQardx8k0AGwqFLUct5ngItcLusRHguqCyobDKGlR
bJdsaZ+P/OQVib1jOo/BL5tm5UueLl4e5mDei8EEJ9VDQPX/K+vhPqohlHMcc4TTzlW178pBN2cN
j5taAWZATgQl4l7+lBZNLklFb5SviAKOJHISYL+PlsJHJ4iyP+5qBzqavv+/mLlAvarPVbnD4Ht/
txTHyGQOXGFZRt9c7ngtiajK/hymba7kHkyztAj5b5ZnMH6GROxhrv0s3ssan8c3cFuS/WGOBhHJ
p5hdNG2GzawO82h6VVaBSyM3jA/OcdZQm/zsrfBEYSbi0jDaeL3PfqioFou1l9xSGCswDfZtQi/A
v7be8aLtNHOGcL/h2EvjWY1iiym9sdNZGri3ooPD7Z84VOXeGjtJMha0uzzKRkjYu4yJyd5qazDy
5GWQRjuomo86oCak21cD5kvlYd0YwMzyskGdmflNfFN6+/J4hakB8GAqpQV/DoAZpQwZUlJhvmCh
ihegzNSDMwpT2WGrTgwkCt6yDasMFelZJl71Q/B4MOSDaaytd62rQye0lQRYfSfng9Iq3WfiRrSJ
YiUWfpiITNlOJlyT65G2zOKCL5SdDUc53Qi8A3pxTqmqFcQXxkbhX9S2XOcUk3enW+W5Cbzrmdsn
pOVNMQ3rWi+peNQ+VN59lCUO+Ff/SXZQCt3CWh5ADOZspbRnFK/houU1K3uHhwci8NWaRduQgZTo
cxGBbZzq7+Adp8QwKXaikcPMZgMPQqUrDQSJhACokGR8Dmm/5W6CHFsewhT79iOY8nGzSPoVQkPm
tE2P4DezQE5ae3eHLwAtE1xap6Vu5ikf8BwNDlz/N+ifpeQmtzA3JEyOPNYz6h7ve1ggrjUqERu5
U28w+Ll81LxF6GAoYnv7Ge5yg/0X21NRQdjblCGjfhjVIBHNi/P6T3yIla37v+1bgUDYOyGOUnJE
hqMuVRmtHv2oh6NFosi2j8SNvqsG2cSnfuRZUQwr12oD1fro04vqXjo+8QvTBFA+d0V4nfA4bD3o
l2P849wAc10v5upWUTeM2cwHcVOmbHGmd04t/B4nPoBPIWqmmidHQA8Q6ARYt1IAVkOzPXrdjWnI
/navq5egGRQc1pyK44WsoQHa1NRZcxePrZrwWtNYY9VBrqeGjS86M2wtPxSZI6Crlvg/KCGLrpr1
c0MiodvrP8MJLYRlgDk+m+/GEKo46S6R+tzfoai5ScjbxoGSSxvYOTRE+4VKhkbdwq47dKiLT8E9
eOP39bZRaFzYbSgE9DkKtRb+/8pAhXpK5KFRlmIHwdqwN1iRl5FbTayxEPhpelbGcJ3WgLqJOgzC
OzPfdxy1D8hqZfuOsYvwpCSbfWy18De+0LgsloVbNMNEa2IqnAPw/1YgCmq4zTMoPNVpcxMIKVUn
1EDIAI3W4tUXshwVkIdTfRxO8YS1vnI67/EtjdNbsjA8NNDBX/hfjFvaFXmMs2WSDO2eaLkazC4B
eNsfcRCwYOE8HzGsQZ5Qm/7CXpn6p1PkTZOEdsQDLi80vASQihX0FuYoU5e8kA3ztzn1V3O1LwKr
BwpEeuH95T/EEsFfrnYsEcxJiSMJrNNFzh2ZLcWseLu4aG/MTKvCZebMzBQTcqAStCkXveBKrnat
iz7ePrQBFhVdHCW1M/E+F93XeszAX5ytGgPDxrQcxtlSigVbB/t7ArHD60W3yyUdpWwVGCZQXFBd
6J5sJ+6fmjEnPZqRE6RVSE2mjDHERtxTByoSi+i0/Wk9hENEd8Y2eEGyNG1hDQ9Obe6zNfM7fJEr
kAqWJdAwXRrlwia8GDtdjEW6cjaF5xpv0WqYQUCEIijLLrJh/TJTbv2/H/M+NDM31J96mYjsOOKa
6jhaKfdWxmhyqsyu/E2OstAi2iSn/FGNlyIHuzyV1CyjTW81zz6BSjP8oyKBeH+GUW+4KAgif0EQ
9BEtvffjE7KbrxVt6h+Iszx732/UgYVSbLjrXqMHJJ1XFS8MTVuRbGm+RqxB3IsehrjTPXfEBciP
qhbmDwPHoTMBESEBCiQLituZqzVrpwzH142W1lzd43dxrcPrQ8YnhfB003fn9jcK0NvpRBp4Uofy
dvXITTQj7lLkptYyCX7hal4PQY+hDJTDZjz0WbaTtMkXUvmMPRanKDMeRVFsL3FaaBxz2NZLyCEb
XJ+2c2u9weqTYTvNcU9t5ayBhF0ipOIRhMmFi5ASWIWHkBbK/92nT9mfhSnaSNnC5zAPhCZvXYxg
x+IQt5u5bUov2iEOyTM0KkVneT1vIXzDCE+7Pn/EvjLDKZc+Y7S6AHqgun6Nn8/uqzxPyPqyt7w7
c8/yiC1PIlkWlrWYq8Kr6H2y413oRG0QpxInEWx5eaW1k8oTxeUtVB70CHrm5yvRE/obi3DVYgCO
vUQdODaFtE6g34CP6a2yj0KLARwl3ib4l1U7SCRKhkvDxWEYNgtMO9hv3Y2A+EigRms1QYKDAClE
VKwAXkl22QXbCJottCIqo2fX+18bytj8Y/f0YySDIMSZj38n5ZS8/37U5iObFWGDzGwDcFwewxdO
RPvf7mU1F4cnwv8KTU60yOggtke0zhznoXDPmzSE+h3WBtPI/shdOQKuDja+TMIGMF1UA69JNyXE
oqUKfVZnA+703eC4LmI17mav0rwYrlHFI52mPjai5lKguhHd9+C66kIVzW8pS2no4Cxm2OouYYCx
Rl8Ycb5+QhzQGerojwR1PEP9WLDYdCpOwKucDq89nBZpWEpKD0dDzayytmax4dSS5Bis/svH4K2Y
8ZtOu6d52zV2Zk5XEklqCXFf9Kr4XSO7W41LOjLWpApJVRc92SYCntO0F3wTLS0mGU9fMmmsMgVq
dQpT7Ig+GLEyCufxWS45BXEUWEyPjc2g5BYkNChVPyLvmJ71JSaTG0Z3k/MRjK77NXV13HupZEyC
n+6dNwt5YGsDCjcS4aeX9BWqfRUHAavkMQAk4IThD+VuEYNRlBVMZUtClnYOIWuI5p1XmnFjleA7
bGhez/NWBrSbIO4IGVu+EqQlxW7WOyg20gwE//GXO/5eUYy8bpRy9lNCFc959c5qDi8s3rS/hn5r
H3Pd9GyCL9kiUSIt5+IQs1ljd9NpLPyfKL1+fELC9ou/SmZpDqtoZUW1kY783VJUzfg/dq3MCpWz
hM3gVGxbZsnx/vrR+GrQeWtfdj3YS76cl0mCHPXCRcu40zAcuIDdrqdx/8EnjX0qebvRIi9XYjc6
ci3JvoM21EIY5Caati4gw9Het8sexLhy0I7OcfWU+C7LCoeqO8vxIqAnY2uVEwaQt0b0fdYUhfL+
6tWeOo8lzK11p7fudNpjKQuMfSajChdwMtImIyhZdYsg7x06037wNGdRREh5neUWX/72F380/jEh
VoHcWUe0XS/ygx+wKZLjtlLIuD6BN00kMRhQEH63WzQFNgwx82mwPnvwKYOZIo0ZQs0dJ/kHO/aB
exJ00L4BpwDoV1Z1kqCnJm7r+2L3RWBTUMeHj0849JQ6K7X+gzT9oYEYeWcesWhKzHNfz3WZb1iJ
q3SuENDASxjGV0/hsxJAJtlyzLvlXNfY2qSGXPimRhsELOmfDPDvGBFzqTJqiPZpy3UTnGteWIUP
lOMA5fritwEnCcvzY/YUfYLZnYyrBaddfPWoR3+DCOBylbp7XHMehz8KFTgQxNgkZNDZUPwK12/c
BNW2T9L5O0iVFHi4x0li/P6ZxaP8a0/cewmM1i/C7WwUmywE0+gpnE8cx185ye6l1bgGx383XzYw
kL9gjajVE7GqQq1NYvEUTqY61a2KmH4L2ykl+BepGS63o7uVzk8lCNMoLJOHrzi76v+i+FDmOHJm
PJncAsbhBZu2BTt8kexfv1NqOnIy22y7u2MS1u+a1ljgjqC5isxpOd2i4Bi/pju02eEPOhPRDFGe
CFgDdeDNzfjeaE1rxr5GidNBBCpQhn0d+6vAKz4CMnMOzhYZOgsLTd2u2wA0vzdTiPoCM2ffwqgo
AVSL7yweYMEqVLi2ynWYvmNpzHv1FLgPVwGFkqjG1Cw7N8maQj314P9LWPFi8ONUd3khmS8R+8+J
foJfIui6iqDZgR/yhBCWPn0We5GOjiiYTFKtspqEM4ncsn50zGk3to6moolfli88XGnsAUybQW42
FjGJEepBR7C23ofHrwfD+YxHXpILaP3mece/MiV8HQ/48YIY5WznHTQkHlaQGUJhGH1dcMnJ2Lu3
zpu+0a7JIKjgD+4AJN9ow1G7B/F5BCdK/XKBF3yCA+ZPR1cb/ixkp7eQRw0D2ynh94TikJ0DG3bz
vB76v5r/uRSlP2xw/ajPzHC3IfdKVNZ7km4ezihZ4+aj/Xqin1gR6K+gCqQgO7Yw2Jvq8Iroi4xC
ucFX1emeGqAeWwNDKHYoKBTzr3FH1p21wAYRr9f1pN5bca7ctIDztbhKq0/CJK9HATsbQmz+vnQG
ksOdFiBHKXsNKNeCFu/PEnVa3QQxmlacnbVIbVlbaumbX92ugo18twaZYL3P7bUegVTG6dcMb5xQ
0PzFcAIr7W48VB8bf/iqueOi3cmC2YQwFKaYo57nU0zSROtu3D07x1xHthfyplpEWtQW3+AeMgnK
43L4Z+ylN1a0kcG/wnDMNnglBlHctNgJgJ2N+fSnaCDu3Iwb5MTSKZmrbvGHLMWr/MuJ6t0n+77g
8ewQzFpyyiX6D5JINnkmKin+3+DIvK2/hPn1bOOplddVz7mNP2uqKMXhZuX/jUkbksye2mEOg/jj
t3ELcI+60nHvm/8HxH1fLvffKu5Tje+b1qDmnJDE7FaY/kPNxbXM3/yMmalzx7A2fD49nL63lc9p
vZU+diXWqgB/yM+MO5n/2cXdeyP5I1ls0sfWHJUm9nelMapx4xgIbRnZ/M1OGglMAvGNCRy/TF+n
UH8TSXaJx1Ni/Akq/F5z85pwElmm+3Q8t0vmV8ZjwrhXgBKHg8IxK1BuMV0cNdZgWZkWVjc8H5+A
tKqfSr7X4JZGr4eqLLllKCN95RUa3MKAhxPbXaCWs20OEXrU5k5g82Nll2NCdCCDXUIIVjzhQ1so
9gMQQis5La+eXlZ+2X+5vO9mCV00ufP9BBfiXZdxuHPm41M1y+nmyXuAEB0SpIegjMwsa0uGcB0d
KeojFxPIqOZnwDfUNsLJBhGNPY/92VdK2XAwN7tI3sZ5zICKX5zkaCzm2zmgNWIwlhHk1V9UiW8Y
ySCHVsnt/CcoFoElQCSPCiQFx1PRQxMV5H8wHCnpGOscC77D8bNZMgOgU7GiaqW74U3OO+Wjbbmg
U39RRrY591/swEu5VKiD8No/v4B2rwQPApNfiEsG6sohDRPotsfbFT5roc5Qqh2IkTPkLGPth7Eu
/RV9Z61yyQh3UuX0vtKVqTIB9en6stedoMNJe/NpUGJfFZ2pkI+kLOERTii0hbkEs4Qq7j955YDv
1f50h0FGPy0UFUjTsJ81Fd0CyNW0BUpaFWXSNQo4YommwEqapYC3Ai03J2zBX6bYtZ1cC74p6TJa
q7GoLqtmIEGA6C0UW6lt3cj57QjRYYmfpdUBlRxci+5LSoii5uSHTDTwTOumwcqjGE1tJtZrXy3w
+87uJkFv0W1M/krfJ7X3XRs3pS33jjvCsE6XOVuWBGcNOyMcg0RJLintFbdMpVKYVx8/LAJ8dH36
NrfFy4PpeZLb/mpN3F/t6Aofh5/oC1xPXxep03zoiv+ihK4vEsRRGqtKJOWVg3/OTkprwBBaqZQl
tXCKiXHboZfxoVFNSFvi6ut+VtJNZhs2OqDo72Otv2DFDcvuXusCjcp3W/L0GEo2FZv4LqI4UGwK
qTUeu2UQLjrTPBcWpsQIYmGWr0lQhDHQDq0o8WG5pCoVCX0DEZVOm/Degx3kztagpLULHYmF8kZC
EpAS/cTf5sCMVr53fYaRj5dq8Q5mQRv9OwyPeTQx8PYsQRRF569XFLWYDikOa1hqvIdiUE7s/X/g
c4VFqkJLR0wCC+qhWabGGQNTW0/gKvcu9BLiEP/0RF31ZfM+fewcO4M+Hbf4NW8ibZBM4u2Es289
BCHpVGVskG+MAue0QGWMRPQovf9En3aI/52Z/tE2gul/SJciHTYq0r478UbuZyFDiVzO+d9D2iA+
a0qH4QKiMLKllWRgfANaVeeJduMMG28ReGiUBTdKx7w6vuR4O0LmO9j9FTHsrCV9i9byaHzGcEFQ
cF1go6FyCruVI6DAlr2cXYxs3ynj0t6VUZBVBhUbtFUDwovHC8wYn8j53QR4yxH5hy1P9Ol6zj4g
by1AGtH2Tt1fcdy/aJL2Pj3yJqCK1QTDHV94WgAQkfMQ2B6jWyqww/KVY/dGAF/qVttzzbCVmFh4
Qq7SKIRksjMqp+TkCkTok/9RX1VJbRVoEIjEzQH9IpJ1W3Z4AQ8UIQ4//w/aB/YODs/JbJ+iQTil
GbvpzlYpQiT39MO8P4/i5MyPflEt0BKKPTwTd9u3yIrlNaoHcEUHiwwo1lWJi0FywI1BjbQiBngq
nc02yO8J30/nMIvO7L0ussWo3BORnE5X/f3/n2rRjZ5gBHji/TL0GE5Af8vzpQWssbQFMKgvf+ct
aSCF1O4Pq+TV+5Lq/S2PTnEdS3AOV3D72Tv8VaiBgIsK6fSvwZCWNywE/DPDBnW6a1AJkrlntnGX
ucL2mSvxTNXdm34UPuYZe33hn4oMpNyMOQV8wFpu5Yyf0AdjaAKmyD9zOZ6IaflHCSY301eYjRMz
4H2S6lHvbwKT54uPg17tyP8QqWByKBUTOMuk1Ds8+CbuprTdApkuwRM5feuCcO0yWsiU+wHqUuCX
rK2DXOyboIxfaqo+zU8N29ps/7PVrC1eqhfXA8CLXXPIdM3cPhB8tvLWqP+9b7xxxIY6mpsLBYl3
1yjMIkQ9SwsRyjM1aDABPG2rvlT/gyeveOezdtyuETVV8I/FSlBo+mNr1B0cMpYLmEsDZqIocEY/
sEuA7vI82eamBdAdrGW/KfqpXZOOg5m1F6wLF5WDuxyPWx7263cML9GJCSJ1Z1IFlk45uGulTKkE
88/9tv5PxMfY8lqcpSMSFzgU+PEnU+FYEbfyM50wKseCsXXjY6KS6qJTcLiV+suiAII9nFZiCgUd
V/ozi/dmlDYAwi4/xUyXaLBntVp7sDmuQsqwVxnSecU+iepgruHn4Wdm+E5VvzC/Pt924iw9CJ2C
WbcbhWvQ49H6AOJ5IEQKOoTnZwVLd5WDeh4SAvd+D16TcURji0KKqIySFEdunM0DOryB9sJRs0FU
PhnFebdg+n9fFg47jkqglmnOjgdZTc6lkFn9bGJ+QrUMaAOiiPC+ifvzdGzlj6vVJXbaDUj37SS1
YVoZso6LoEcPZX37YBCFBBDx91xcMNY5KWD341CzvIYCpaZVwPL4dGPqAd4fLzaWoQz9IdS02OTD
tSPbDqRS1XfneJg8JmwDilaI0YN0ILDm5zoR1nIOvNFD1iXM5ErGBmJyb15qY3ZpolYBtx+ISBzS
RioOxanCRzKQ/NYteB2gRON3jitpXBkFpei547DWME0zbcz6AKREwzVSC2Sz8P/g4W05EIjJl9oz
rWi20/tMQ013DAk3/qkqckvizV4On3nkwQoiaf3DaJMEH/3KAj6MnXxOpue7Gy2GfT2kLM2B13Do
jyDez0O6zb5IsUv5keMRRRP4CzWEE3pQzs9x0YL5bF8yK6dExo8DUnp/F/60pbcuu2hhniZA9Gag
TJSndsqJHlTAwQvEZ5UTNfPSDIKqEeDG9FWaYRU0ys893iOHgnhnX3zU9QlLdEEH0HbI3RTlBgGG
iNhB7D7w8k5DeIta7TSxsE+0oYctxY3AdOTrRsYkgiB5qVQT3o1GdEpDw7WBZErHibYBYxRekDYM
HfTGT8dJEByXW6MaLxpZJ1lNp7UKWtizjwG7L+zVrrTcIbnyuhq7kpRyUyiTugCpt+aWAeTmHn52
vorc3ycyL3khcZdlMnE7yfSNHvip+jOk30Gjnw9TJR1CDa7ybMxOI3g2ruu8rrmo8NeL0wkeL8IP
e7FSnHgW1urXoKazNnP+cyWiM8c/SQm54ajP2ialbxuDVJCIzjFMkPHYnd4AYvg2BFvHskbjRbem
h2N/XYjToXKEfHVwlEMC1nDqXIKRxTrq2WYwnHN2O4RgGA+uVHuCG1rV+Dh7H1Zs07gzNn29tJ6q
IqNinrGaHK0xbvyXlk8sEn1ayr6HZgMrNbRri3ZXA+hyqSJSr5hZjpEhjXPM1dU/q2QQOKeZ09ME
heRjVNvIyhqFSMcnbDI5wDfjQghE9pfl7y7/n2kWUUOcVSz1uuidualhyuVqRQXpH38lySxJ68Nr
RgaDlX6T9beO9mExlrYhWgvlzGzWoA/gte6mDD+aGSrRVTadwVp3KMMS62dweVjMI4Yf9wzw9kLZ
mvJeFdlcs4NxXNmVl7HcOf7QIcxNNGZFuzMHIa04dLlifLDV8B4bxxwqmgaPCo8U6Ld90fyQW4ZI
pbofKqzYw9nxwbZvNFlSxHXl5ZMLHPxgxjfYFVEGSU+QqzFfho88Fh22pQ2BDi3lAsd5xTLx7dRA
HFqjDWJgdaqWlAUIyR10Vfd3828Lv9QI7ar2edzEnu9dw9VbEdckdZDZ3ZmI5UxNI+v0YAJd/JL4
X0B0V7tmN0+UaRZ0m4QBFEWNA0xJ4F0GCep15KJYRxYCHgKF1lInEyh1AmD6HvUxtFNbaFwFaqRm
RaZihlsuGSgygx5f13gDsnFLbpFwECu/OSTjgQWoVofuKF9CF+J3PyfKJITH2elPhB3t/xpvDvks
T9521csjR/PEIkTEP9WYW+izh0/tzky8G8cG97NO0GF5yoQrx/UPiYXCJ8Sf1ozG9w5N2vEoOgVO
NLkoqkUwCYsV1Bu0NMiezYlxOsIT/rK8wn/arR3N1uoJAls11WFAEvzhw17krZKYRWzXY327Z8G2
6vugzl6GhVnGRfjis+/dXcd179yEWlGqnTyaRsVy47UB9M0hIApTIQO2j0gYqw2D/7Qr8PHyeQsp
1yYRfkvilILIwJI/DDXCVklz5s+czk1RwewahDZjaf/+uGcAT6gOFIZc6O5tr7rPFwwbjKpWwsH2
f8HXglgzEUXfzLT9coauh/cmdj4DSe1a4G4ncRk8Y26hQ+FufevSMQsSZfLl6Yb20wNVI79rYRNt
l5wJgPKH6GvB+Jyx7gcGO722Dnj7uBMPE6R+9brAZObIKm3ts2AtE6ghSoMM2DowqfO2Kstb2fom
H0cecEMOig/vh5v9qKsQnbn7tAx9JP4lGDCYhKyglkGGWTMv5KPi163s6u/D3gmxrf4CJxcnSBIv
Nxu7JrCgAS1gAYJWjKsAUUNz2S2ER6Z2k6ZAV8pY3hG3McTbdEo2mmUZM7aAhT9eRWWSUjuYkM07
z8iaUlzoBVqEY6U92d0kpDjcJMnOp4+ICjHRFHBJlWG5dOQeAFuF+OmJyjw10JjwGJKlfHnibAS9
OXGdYNN0rOz7yjHPPN8+6juhDo15dYSgx0nAArGZw69eOb9y1TVzmiJ7RF7uQocOd+NfIqahjMLJ
8Ce4AcuetI9GDngYJX7I1VOLLz4z3JnN+5GvHmJY4LLQPUmiqJlepd3gTm5NQ9vdblT17kNeSfnI
v3+n24WR8ccgROBCEKpHr4WSmnw09lTslga1bMPl95jeNiAQdmC/nD6lWTObCRqm8ATNhmVpf25+
NnMNoJr3AXzFuzDCFB+BuXR2SI9SL7EGTUoPbSlHw7bsjbLPVbADwQpNdchVWZ3/mutSs3+DuC8l
diAsiyBKRtb4lIsfcz/0BuYnRk8J3DivNPc637/FfKq7FEiXmb+4jgPtnbSF52S3N/HI/S/ROoIl
P/vpKsN7xtWaJU9gvDsc1du6T0By9YWuviRx+D5w6kWi/uM44hVtih7tnmonc8XYDcNGt3u+hpNh
kkfAe9Ob5+2Dd4UWsSJBIzAcuxUafWB4X0dn63x6P5WkJX/9QKHiH36N9NssJeEtDp+Axs73inpg
K/Y31bEtKDFf0EqGEHbDylljL8ym53b8Neveg5XiHe21hZQGByD9Fyi9U7PcVAW7FqU0wMcf4SZw
bUk/TtYQDXy4mSiqGmLy//I5cyJ+L6mvOcl9KcwO2Fu/pEwHpqUZitAJAvhQkkTrm9O7NGfGWRVc
Znzk6ueukoo+yNd0Tgox6gX/sDCsIQczBYhJVlLUf5o4Zxa8E7T/S7sem/TynAoW6Smg8zKOGLuY
vwIFWNX+dilrjebZXWpdzui6fUXdrvmmog3qRpWgdJ7xHNXOrhZZMOOjXnxY+CB5jKY5XHMdoxZh
DrW/Qc9FI9qw/ENPTLa2uV360gj29xAeVLycWFVnD9kfymqgkJw3C2CewkZ1pa29GvBzbuq7OgFN
OAsDid6Zb7Pp70z8BOhifv3nIA39S8LvFVhcp7Ew3B6DIhThHIzrUFZ4wybN0MrlrmiJPKKzrhaf
WlXbELz3Tojo/yX25X1jbYbEp58N7g4awSiSlJ1XcwYs0BzugH9BSe5NgV8Dg9mjZ67/WS9xfc1m
rFmmhVg254CtRAZPwsvkPA/X4YAv2jhE7E0Itn0f2hhx2IDVAs8wFF9+eyEAZU7l2PzBX9gOlHzT
bVhJ3jtnu013Eb7k69bQ2pmGYRQ7/GibzwA6WNe7gmVB8Z+QBu5zPxvnwh5JxvsOG4AeDwJS5kBc
DVN/hwQtFds/lWSuaP+TaBz5PFKKYHTqp4NQNndT8VaOa/2WfmduwNtpSdbrwiIb224P8G70ZwZr
CdFMnRUU+RxL1BmCpDrfuNhz1R0aXYCLooP+qGDwUPbtz2HEI9faxsuVE+Tj8nisnAS1cE4OpfMl
bSJ7dXrJqdZ9co2cQWlsdvyIg2g24Qp2DbdpBUDbJtVavrd4wBsR8RFKJ+yxzY+hhN4SqM3HFI8h
KcuNpnqPvGfrx1ENSjr2wRts7daX2z/KQhwweCxHK5Q+Y+1D9eHFrCcdTzKIPIoWiALP+Qz/hjzQ
qP3ZCPs9yA57N5l8RoUAfQStsk2unopO3fSpBBwiaAfRPmQOowPsJcGpnch7NbJW5SqoLQxRm03o
UCvmmqpcm3nTzI2dqs9ML2JsegqoDyM9ZXRFG7cp1Xn0Vawq9LYFuKyEOFY8dx5nPMJM5y+B5TlQ
jJlb2ZsdscEPyGog04syXHzFB3kgHMSBIwcvEFSYm3csrZOv+/fjCBR5aPXwDq/9I6z0GUtTnIDz
wNrdFSThC9AOA5dI4kdqandolX6Vd0KrO1Qm+/tItbi6si3vD+lEkdq3lDPnA4bRq2oBkkPgFUI4
aRA+PsVWzWq/TPOX0omEH40x7S0Z7CIAtHfTDGoCT6aztVTUBmDSIz6lk3BqRMBuRBSllctH7IKY
vFJZWyYxxwb2esLQbvqjZdkZFruyM5LjBJxTz4OpySvxwK/cXAyBorrT2IA/rDGvTaAJp23SK50l
G8Vs1kSaDXoV1ZOgaay4NBga/IBeWRRuR1po5Bnk+Q80dos2oajhM5hHChMgfQ31CtxOOgCvLoRm
G0u4uVwKd1Pz8Pn+9t1DKwRnz8kWOen6BK8D2jrigy5Hkj0tP9WPENR9WmdruunVm2ijjx34Cr/G
mMFpxMcAIRrtH/wzzZaKiRgzTPl+DMQn/DmcjeZ3bEF+lph1OwW3ohHL6TzU+9kuzZcpf1bi/weH
URUq1a3KJeUPq1+mZWelyUmFJnqh68AV/7g4m+Do/nhkeoqmFDUAt78ifW4/8qoM1gGlQxTuxxKx
ctfakGwjaX4hqxB2ATa5hIrI/of/2Z4Jiyr7JdyElzERZOoYcr0f4NuHMCiOj6R0bZlaRqV4zjzU
8j+wWyQDNmrO/OgD5xG+vvuBo39J1me9L63TWGVQH7jRFEyyoWAQCBfwDFJOa1KZ8ifon3SeBivQ
yyn8Ud25gClzptQbnbaqNgkP2XzfXC4a2np3q8pfKzen6Ru3PagHNBRBBZN+1HKSbwkxJ+jiF+1k
Mj3QMueBXtMMtotwNLV5Gf6VMBFP8MOxnHAp/eeDmAHAKwn5TEzu8dOjF3UHWn4dloE+5XTV0Soe
bFwFIHiLFDXJzt34zEPCRGwTCwaE1LifR0xnkkGU9u3avmC/EAI5jhbx9AmXYhrhzLy43CcNMvzg
ri/sSvsMy5IUQtfiHonkEsU6qU7SZf35/yzuTb+DqXjcGWCJfbQ/WQkoiD9XMpPKgHoICGCbMw2G
ElIMv5etLOq33od0TVIUotuaqyOXA+L/RQceeIRdDMj4rulPZXm0T00cUCHUjwcx2lnuV7JyM6YG
AUgp73r7M1wTtoo1JUkpy+l+4NBVdyjHPZA63DuMeL+Mw0RmgOqCCAKDgVtkST+jIMHGq9rbKZSk
vHEXx1fY/Acoz+Bs00ETJxQ8RnhH5lNbW0G4nRir1OPc9t41wUQioZ8lghsDqUL+YNYkQDiHldxo
qwMBbQnMYTrePmgQwi51+W9bfTEqf+EYjqDWSw9irhouJsXtTwnXBXhqvMt/a04tei2W8rlDxw0C
RHnMFlaNX3cjkNv9F+ZXoRHeUJ4xXXYXV6rZAD0ouupi8XyguWuH4Mau0pJ7vMFgaAZ1T5LqS+vJ
Rp9xMc7Ovl9pD1O3C8ZCuUyJZ/yiV7Abkbr3nC5LlY9CVI4v9KRtLYDwjQ6Hu8Xq0zD5Y5wJcBdO
+ueIC780HUv3in0eMzFdU0OLIFIhbJYFx8eVppVUc3w7WOCF0IfjIBBm+6xnRxJfJByZJlXhRZM0
G0ObLzphY1KxwpWIR6KUrh5L/Oz+OsQ2uTONxFjJ/NbWKvHsb30ZnWqTom5iQTZnyg4/LmOJRglI
15Wp8CUgua7gF6LrJ4EH4Urh32SdeCZynWmOaI19RrkH27MOhE0edLNVqCmkwplbxt8f7F8/sF1n
4k5W5c8LWOj/pTKizblCt8rgivcOBuSsPiHGywGiNUd/Po4/02Ca6vrVoEvMHmda3QqQjNmgHoLh
giYz8oPEZTVjdwRwG8kLrEsbqeRfrgB1Z/8q9S98u/r7kpfblOhA32NfdgjbmbeLp7guf5u8sNGS
BdkQxiRE8blPWWeoig9VncZH3r+m+b90+j6uFFJ7947UAXWMC9UOlzY3DyKU0J8yDypBbUD8Vlg0
W4l9WBuxx7C20i6psuDXuj8wVvRWQI8QNQAtiLaI7quhEPD9mHi5qWnVG8XbXvee7V8UscwKHsYE
7Fm9Etckge7zqVOJf8f7fslPZ9wXC1BnxYyYwH6ixVOUbgCIm7Vc6sWTtkiLjbU4u6sGl/TjNofq
KOqQBcsGhNcuI9N1RUf05PIz7yye/KvhUgwop6cUYL733TfHrJHFWk+I8WfNeO/qUlvfdZ8EKe7p
fdCHa97H/PNgGAB2/CmuhwPQo2IKICUDNizNJscMIYNWEXNaQWat6EaukEQawXOXASVokfHf01ly
tJIgARG0uzvrvJZ8S9U16U7m1TpAzhcFvfgug2qzQTs4xw6GUsePDl6jGi2H1A4FqOQLwcLvqwng
ljISq7zw5t3OKKZPOeV0mcx7inqyd3aROxWvs2gFhF7YiFBahtTRUeFQfuPE6U6gwQcyKl+kZ3Hl
uAZFUN8ptX+WsPVbH+JcavNgOSdHWyCGhN8ST/yRXR3KoJ6OApOi+yLKL6lbPPFdbQE3I3DP7SQV
IGuiKJ0GFXZfZQvV5oVU6ATcvrvW3xbRa0yDZjxrKMtqxVknZ3DRYVHC9VJCg3DzMK6DCW8ZIjzT
w2AYyDn44IXm5iVEn14HByE5Lpey1Qk7x4ivOqgyfzwiMk4xVP7/XhaIm5djkpAE+M3F7V7gDevW
JX9Bg9suh6RYNOIGs+dkuaJ17ilkfwUtwN7W6MkU+w0+horiZiz/G5d9yjZuVaXh2ypzWJjlMIrv
eKggu+sf9T18Irvodel8wwk2vYWhcm8opzwnfO8deD2CWgTIKxeacyyjmo4XZTMp04vQZx6PjVqo
+ycb95EyJ8KAQwQYZlR3lBxT/6yrkWBd5cYz3iEW829rBStklTqiYfsz4AUpoqofjppuJ3WDFIlw
NRhI4++3CSwhbPzrAqm6HGT+BhKuY9njDKXoGWXv/n9wryyeMZLtkGBduoD0xdh5g7veeyQNtd1b
AwrTqa9h4TybWCT+SlD9iiuB/xwtmvafAGvXQ3Ui/K8DYnzxko1MhnA6yJasmirxwBf1eawdtmcn
Tf6wyj7bIlD+dL9NtacufBJX7GeROymi9Uis9aGXrm1/135YuuapvIN3jUk+xnon0PTjBW/ZJjWX
oYIbQjQ/ogheY+eYaynGeNhrdQ0co8b40bxpNEv1MysinVftEbBEsJFb5gWF5Lit0sT/A4uJkJ5k
mH0cguOYNJB5eqVLX2eBS+mFV9trZ7o+CWhf3OYbVp99JRetIXD2Xz4d40c9HUGSPoBji/5GDlWN
8vmYhSjvoy2WkH2A7sBkqlRtDYfGfT+qPc7Q3F/Qb3q9g3JFrqVg8ZpvPahopmB7t2NGDEo5UiLl
w4F2F+OePkFuaUjsTvaHUICdbGeTZmm+nIyyHehbz5oWUkUQ6zSnBcbpViZBGbGQWq9yZl8JOfbJ
32cSRxQ8rJXCpbUSTqbm1Qfzosm6hZCrAWj5555aQHFwkJ9X0R0eMnX2Tu5iRvwnvFS17iUC8ui7
+QvDLb3RrJrUCDT82W7Y4zYA/XfmRqoHM7DqBWH/I7Vv4lQH6FibIC+ZWrOCaB2fAVTlQCJAsd7J
XozeNgViEGkvtzCgONzg5ISrL00eHYulCAHtOXkMnNWAaqPZ/uu6hK2U6I0uUy8tFvmFGFC54noK
4S9IXq22T9KFdJG2DMHMxPIA805geWht8B4J7+MBqFJbATOUMSIS07Pn6ckiH2zuT4VbvcWWrRuu
Bs7Zmo9tzYSWy0LrRNYFJtvZ3PP8fcZBUxchYuB+ex9QrPkF1rueOJlIhV9Yu7jZXVoEJ7sH1uIz
uLJag4Ocy1vcHS4clM+cgjRr9tr52mq6zNWzErvds3k6QmrQCVxj4+JT6A2x1vCvLfx71/bD37QM
5mgfOLMXkDn8FI8A6fGXqkLVDMglXDydQQjUBXm22wXryOZRqpsh33dt3YGInxBpyOYDarylDNdT
VZCQcSQdCuSBCJpEJ1TLorptG9EHeUIkdUynr6eHaRqKOhym7Y3xBcfbRxytt9aCDps4u21V2Y+r
badQD87iqhnIkseALNWxH7UIhgNPPiZGCniWsWsH+rAlSne0o/aeccCvmL5VVtdyCe7TPs0Se7hz
cdkLleRwW8zCCzTHtl7RXwGqzk8xo51DIeglC/E1NIbzVeF1iQn21Zkg2wnm7YYhnG/riMhfYkBn
iqOmnAtpvtK7D/0xyI94llEE9iP5ITFQEB2bvN3TenDEg4L3tP1aeE1B3G0/DRw0xt+vmXFtZ9p8
xnTzxUrJdwLjV++ZTH/zZMskpBxTjUPc70YufdSV33AemrdC4BqMVcdnrAa9HOJJY5kwbLeAWOhi
tQVLfwXL0+lmbxVBD99R3+7kiflNUagDyULfAlT60Rvu5iMCd5kGJd1U9HSeX52PY7ZzFdkrLraO
wDB/lVSoP8rYLxWY9HUmaDgaTXnCVr+kRofcVJzotB3GiUjUPA8dsB1j/haVMxsZ7/StdK9XhV6y
IIVOsXd+f1KjNR5jei6IF/N6tNyN+totHwdI+V9B5mVSuuj7uPlCuK1W1aQxJiHAPFR9yrMZwAa9
nAXwoysVaw3jY3Mv7P/fWRnBjshrn6zEUdMpLem7r8Q5gqqNqfZzhoXg8lzOLnoQO+oJjfFaIMl1
dAGZOP828zEsfHO1xL3fReoV7T153iDkrVtcwtwOb36LTGJSPnJ6etNIAi38Hr6p86kjC+MQzN1T
6iWBQ9au71GN9u+w4je1+D3Gld/KSkEKlyRi+XQ74bKV3BwjFG99koUdX2DqdP0xblk5KVtW8cWE
/G0+a8jYycV5i0Fbj0O/p7g6erQlWE4FEt1hkebYPYRM48ZRNJyXh9tuBJf1SbE6dRO86r1PWaj/
Ak9ibc/95Pj0YCLxGdO0iKISsNGB/U6hR8TCQiXQyikVCk3JNuRsy4/yc/G8yoOat52Ymfme+z2J
m8b6OeuFShkohGZziVwk9F3Fodqy8HMGxwN85w2FizlTeTowecM7ynENGyJ6afAfqjTPPJnhJQWq
vgNUiZWL6NyJ2gprE+7jtGYBlcfZYEN8iRvn+QRvMLLvRyZl5V3MmwBygTYnqiJKpwTrDPFM73EO
jiHlkMfGXJS+aNYi9IHKcfbv0E7rLrekHBUqNHhKgkJo6FowPQ2GFjFuDpwnOJs0T2bkmvm53hLJ
I3hz0BpLhtJxAEDTFD/DxH1pTcv6i14TWEdfD5y/Iu2yva/Sz/pLlkFuKkagTE88BxA99VGf1FdO
/xoRbfZ0OM5+k4zxBaq673LO01AClfNoRzsiYX9ubLbfQN9HprjSO3gR+Z0DWx8YDDjKWw3qWx4y
CXDKsDCEXt3YxRpzK7ihHTGSNJhCfMaetw4V11u91quijVAhPav01Ah+Y82n+WU2mAuL01w1NeVu
0s5e+qF7AhhycjOdqusPAFHbjqbOxopPA4MLRONT2znX64LN1uEmyo97fwZCHcY+qtwhzXohBV9U
xPEwcCHye1kCuT27C1v+T6Zl/8+hT0SBjulc1skRQA7l3d2+euVu1W06yXlefrqNydTq8oarKe7X
rkht9BGDwo3tVd8c3QZ5062mR3mMd1jdS4BdtpFOXO5DJjwVOMLTRrQ1LJE20FlG36JRqpMG3Ph/
KBpeJa9hVxZCBv9zCeHpkNUr3lN1tL1uklXzbjCgoQItMbs+52Nb/+xBAm8LPFshnZp+5QK7MsdL
5rOJRNAClJ4/Ir06C5dU8bLHcg1ZgWfCXVc+dL+sh6E4La0f95LwYZodjHM6CJtNTMbsEr0ULvJ+
C6aWiRPOR3/OHe5R1Xpyp8pN7FdkQJFIpyZGvEg8tMviqvLsn61XUaaqL4gqWUl2TptXuqDR6INm
vQwRVwB1xtPlcrU5A8tVMcEomgZZJvB0IxvyhTl08R8/ITM8Ll8LlFceto/9eBsVnn95wemn3U8C
NpeLoRjoFD2JE5AhorsCQe+OpyibZKhiwFkUeL9gQpRRuc5S/4mCXqwiy0I06C4YQVI70jVOToKl
zRmG3gck/E+5ums2qEExl8iKESp1WcEONdHR4ttedHiN8o2FHr/pzqJk5g7k3o2xqpyHmNrcPGrr
6hxK03LhHPNXKPiyxiJHYU0u9utNCsawdyjWNBh7fWwMvY7/UFElTFeW3SNTpCd0mklhUhydMil2
O34iMgVkbNRhPpwbiKDKXjXWqljs+3Bc+089HkHfPGRtqPhFJtRZ0xuf0Orfw9ntefzhb/eZzvWy
C/At8D/zV8cVWUp6yzldUnr24k1fP1Mg5bJqEtF38XP4KVeB03GCtQF8M+pZ74qz7rWqU+NuEA5d
90+2TQQoRYHhvr1Tb6Nq61/MoKPdeZZ+E2atQsW4gRUrMODVoCETHKtJ3BEEwPbCWJZefn+giMdh
7RBn5c6hnyBsRpSFwoibntyIkcUTk+bcqYjIYxsMzG0ubGJKLuTVN5NFxG4sV+dAU523738catIv
7jMwz9pxjaZYFbOdnjX4liw1TyK+YxrItRtRpZ9YzEKLfi4JSkcXkNH/stmHgFlV30DONLsFKeAM
5YtlCL212VBz1vwWHkPtzx4a8oOnVS33NHSxKIELqeQldtMbV/QNqBPd8k2QDSpCx2JyDk4pLZhG
Ejs/ieomZGOVCOhSI5sis4iDdECls5P74vhNWzb1YRKRTSYhtMxAUcIgfvUYHcXt2RG+HEIy2d6h
eHfI9ro7MBIojcC6j2EZTikFJG8izDttQjMdcZ+lxW/JmnQ5heFFfnKgsOcWg49m4MqdPiwj7JAN
8F4UMTTZ3beyLN2wBOPeb08cIJThBjFm4OigG2HCh5M/ObEigz0SRwxJeqowYSUU7/2tdo1ugUv4
aCbzDJlI+jJZAokjObHlkkTft9y4DtWNHnnVXAiXAhl4b7Tox26jUSS+ScH/rzE1OuefXlE6dRP6
gCjmaUk0+Nol0FduUW8sWX7AEw+PIRZL7jpS3OBz9OlwZ+yoj4khtORVS4IqiDh1hp3J4q+ixMqC
q1uPNMy3WXvFIC+cuz69x+UjUa34eR0A+SAbRCp1p/FhOA80tC/xaC3V5cQTLEPteo/y0J+7HNi8
xoeR/FdYlUgZm1UIipqxCeYxMpvF3MTit4WAF0Q/ONHofkMOWL4JO/lllVsa5133ikaD/0kcM5Zu
t3RiRJfJHnnd/ohTeLdtcmgfmH/+1Y7RaSVmnjzBcVsH1Z2dUErB8hlZZ1dg8N45ETC6ixge8zY3
Ggem9fK2GwH8aa1C/N7FECDEHQVlJI1zZkirQW8TEA8pqwYcm0jJFZkayz1KHi+Dk6TJMQCyB0yo
FED/7CkfllFx77byCQAKH3rQyDPcNT/L0q10AhtMCw9LoxVIYPX42e1qRAvcySSdcyLNFSQ8gEDp
B+pISOCcI6lQBXxoCG6AHazcra1o4mLK5tnqkpajyWXoKLVr3/9SZlOAnjjtpAMaHACgXzzj0cbl
4t1qufBZm3TA3dDDeBFI4aaVxrmJtdtko3gQWDBvN1hVG9+6ZALVgZMBYa5pNgWUS12C0i+Bn+qm
/q9ZtLgtKa9QKU4e5SqEiwGzEZMElWN6xWgl9psDWhUUva39HXniBQyWeG8BXfC/8wXVdA40D/ui
LI/Q51d92gvHDn27sJm/VUeKCCDIIaL+mGyKq5Mmj737Gxuti9gs+VLvooCb8wnSK9KqcZWVGzhe
0SQ2IMAB2/hoA5kIsS8tkvNOMTRjAwTSfSQ7EgAKoDH0Elq15071nEq2k9h4XvLF9ZYz35waVKAU
Mp/ONyP71HCTI63jdze/kqaLHRuU9kP3iP9Z9CxgQhW2ubKd/3j+7Yv+VBIWv+xoqxbHvMs0Rqb3
bvnISUQ1eNmJshrZridt+wfI9eJsQKkICg230bIENStCgvqNIAcr8JwoJmrsBoPf9pypBF7J2hPN
yQY1OzSb58H0sbjMPMaVjb7dlm8Sb6+H3Ax2CAU5ZQBfsxq3e/HCeJzquYh2pn7Cp+rcLtJ8zbXl
NUEsfSLYK7ZdBvi3Sl2M4Z2DsLXqmwZX73wgmQUXXzxDtoH/MMD0NVlmmNCbGueiBxQsuDbGZoE8
e7Xez5QhhgThK11ugbBCnjodHT6wbfcNEBi9r0y7ph0/eWhFElqfa372qmDkq/AQ3tAEXW2p2upB
oOFxQHNYC1R2XJItcarM3vpj3Tk839GoUTOYGr6shqaDpsIXVTU2yR5IIR4Dh9yTdiz+bj4DD8RR
P5P18iGBw70ucBAYlt9dwHO/K+QVYY7JRivOnxzr6kbW4743n+yyIp1pXpaOXRB/XvsdNq8hQ59/
aXKSQ5CwKIdXRe5DJXN4fn+l34K3GBPu5y6CxWkfPeoJLSJcckO2T2MWCa1QTsSaMuGnq+HzrENi
wrvothzhY2TvmmadSlZEjr2HQisX9sGenjW6o046AtgM0/+r069whrA/CPTchI8Sr2+ufk00pFFR
TEUDETbn67FksL7sHTXtd2TwstA8P9O+yWDoOW/Pi+cvz/0KzmQtWJBkpOPAAefwzflqk+RstfyQ
KXCA44D8Sg4+QPyEgYg4spdcFKYWy3LryFtPkh7Aa5DmyHk2vh+GWEuYAWmPJiTXoXxZEIdY7yT/
pP8tjymjvBhwKcLxFTelDq0UFYucCqUqW+RXOSINhTeLtaK1LqmZ3sDAZvardUQcxajijpKwbKRq
f5QDmZX0g7fjszRQmEPWH9cFy9PMIyuFcHMfu7An+0osJAe8hdZet9LuYG5b429p2cHveXJRel86
54c46tlzTHjPaAhED35wrnPcrgI5GMtsA9fK3t0Uow/z1+DNIQP9G4CaFx5wdUIcoMPrHrIj+tlO
AX5tgRo7dVD319vq10kl+H1Nl/6fiOUxM9+qwphl41Nugfg0qzbTiXCxlRlI6yHa4QKRMfFA8ar2
t6J/g/WR3+2fONoZJrqag5gzaCt5+5HQ1mjxD4Wmu2NOEet1xtA7X9Kz/xXWBJwCQoH4mhAcncJN
CnNlZY5HbRU26tYW4wVGP6COLGdvQzPGRHhLJcBBluFzExDdCyZ9v9NW8IasU0x6ed03XXzFZz/J
v+WC9EiUxrEEYj51Dg4ZfSlsV69vDjLy8xOiMb8R+KtbZbAGuVFdmsc2leLkjZPi8v3xaN5usvzQ
r7cX1exvXmUjtp8yLYRDS8c59qg2y2Q2BE/MIrXViqkwfWpJJUM1ExpWunA5iomc/K4rAdcP13s9
eyWFCWnIvqXjE9twW933b06ZEYqRP/6+9OqahQHTX6jUZPonF3oozYwBqHmfDjFCyiWIaLYvQP9C
Cseqh8Y7Vsapi27o8PGEzkUx/k7RYbV5BxNEuquBrWfSLJ5YMtfm5Rky3nxrOKzXIH290SJ6AG+m
rFfXYmfTZabBI2Ak5YR1ayzE4WAOvyCXu5P03tUnQdPlHmbKeTYK+Eq6vZ95NUzTa6qP31Zd+7Bo
OVbImxd6Adiugzt/3DQxwuuwDsH1EhGnaVz7JKz3z8is8TEsvlhxZNKOu5iYFLPJ9rPS7cICHNfM
KLit2dEkwh+Z2fWkLdq47Fwj8wpf4z9M1ctMGl2BLqUhN78Owp0yYestTH68r9EpiZb6WTBwjEzR
qGTbgps49aCELzGaN2PbEcekFgv3p/O9Z20YFuzAtDQG+oStBqBE0CmiQhrUmjrzLgTWPBnrB21J
hpL1eqvSm7Hb6FlRMPjrFmWDmH2xmP9PfqgeaGOyuRUtLmA9i31dilJRuI4djHTyc7wHCTfsHxjg
lQRxume429GHL3QU/sazYPED2vTWrKxRYoKG99COS0O2UK8Vul6S8ey0Iyah2+IzJX9Ar7YE3cW1
DiKz5avRczIopIOll9VLl4Tj7j4RDr54voi9Wl115ZAb7fHWg0bAnYIY/jMcJuVYf+OWLeSFyGrc
w+jA2xkUgjwRTK8gVtzqxwr5DTduFfUZGXOpU/y6dPaH9TxsFDFlOqdOBgYAsSm7YcbfiP4IcvaF
XtkslGJAst6a1nHZc4JxrHtAB5qGQGVyx4WW2+L7UNM72LmfOKE3SNMYjBVtORvnU1kbWohQizhq
dPt9qEKQNzWSl6NYuYsFgvuE5ELgM+wp7wVvg3uECUVqihMrO6OieEqaloGEPvFet/9IfhI1xzDC
YCPY8Vyk3alZauuOuDB40V/4HPAbFTT40TwXHw5UV55DqqphkaK4SSTnijJcFmmP6IWx8EtVyEQv
+v+QEnguIEvcCxVb3X4rnhrne/klYMpjPHYeWcGeOZvsaV1Xm4aDLgk2xuP7AUw0IURjljSW0C9J
Cf3ISKhDdSsrhiMftF5PibcvrDBqpza1jLxiVVHbA1ITjAHI7QaU+VMoHJwMXaiAO/Dmdd0LdPiz
bzo0mOGO96igN8E6t/KsYulEJxNiXxiYz+YoRw5XjUE4e3yN8k8RVdcTuBR0rRqlHrHBE6wbmVq6
28s/3wGnNzi2WpkMU7/hD2UgQm94XqkCFcbA7EJ/fv1D913nxGwwaJBGu3XixRV9X68UnFks8Jqx
pIQPO8jST6oxIdFhti1LPNzKVz/nwQughiEkd00c7T2LxoQfTkAiIcp8ZpwZNGNNTy8EH28tPD6k
CdyG7yVtESpZen1VHzspIrWzAgK/II9vw0eahmSXlUlMvd+itWEt6MtQmZrwSW+Le5KJ1bPe1Hgk
KcezGT4ydg58lVhz08lAvy06EQWLMggsnfEdqzRXonxlE1HA6E3aAVHubJMXK4pC0YeCurO1sG09
Xtoo6IEzE3mkv6GyxFvzsKiCJK8SbMQSc26bMjYZ0KS5gHLmmw5sSYDuwXJz1wATvRBdlyYOeR6d
HFp8buP9p+AZWFnLeM094QD7Q34RLxd9ucl1AbVOHERDnh72cTzBkVeV3wyM22V6T3iYrZilOmR4
sMEudmqTSzN0co5TkkK29G8JLoAad1bi2aNPXYP2uCyBK5Gq/hY2hwVMyMu/WZTaRi/zMAKBSPYb
xzc6nhJX+Lj9d8YmgDxoXFsuEfa2Wd2M4lmgoxDYyUJlIyTLUS6mofO7r4dsCb3j5BGVJHGkAu+D
XFwHeuWifpsirBPBbWdW6wZMLUBh8z1Jt39BB8eVXdHZlZ7OLpgecUFQbB7yb8xaMa0NPH3XI/8e
4xJhHVXMrNokxMYDs58hKGIm2JfBzg4PWg7Y6Mmoe8AkL5Ypemz2sDqUjqSbamt/LkE28Pp5Hms/
IX9Hze79iym1nX+VoEsX64LNppV4CH5l2h/uXIpYvc1/iqJZmO1g/SjFTRU4YYs/N/u8cmVn/wfN
im5BxbDbyeksre4ksmmiN29pisnS0Xnt7py3yQZX/BGYsAFl5FkuxeHMAH0WomOb7KdAGC4wOrKl
piFGNXCGCxNf4pzAVgsOS+NgKTlRDk/Jh/LIrkS+91BWCZFYwJ85Am0QZe7q5qRkh9KDSvP7ZxBi
VQO2uDLuMen9/i4BkAztIPF8O3c95GLUmCLm3faiYcILqX1spXoO8xOQYTSen7VArvyRjcJqji0M
pw8A2AHVBHi7Vi+OyKF7iGcofZjsmXQL8IOi+YkKV0XESjgzPQlUlSKLAFUtBHfPWbwZjjVKFKzc
kF8YkYhuQAP7oS1UOdbS/NJ5FC4zRzNVgOVwa60q/BiGFDEvqXb5tdF2Gh8cARkoGD6TnWUxEqNk
SkT0PNFtE3FRPJLtlOtoE00fXSpL6DYz8AHmo4q5tk3F0D8upb619Cw4+77D9aWu+tGtT3aR+TrP
jl99gX0Du3c/g+QwsEwtnq3MaxAbO2pLsj4WmBDvytnQcpIwDmufKPPYJ4F5kSmPxiPFo1dDFhpt
jtDcRTRsK/sluzKs4STk3jiQokV7it7oAiQ++HPOKHOdGX8iYUNgF6vTwxuWXXjgxnix9gjzyVWD
lIqnvKRnBYbBbn21R7jTS39ZFBC1Q/I+5Qs2w8ENhrKbNNjYM1ZiCCcFpH3A8Ok7x5EtRSRbQwOj
EcFG53U5Z3Wk3B8BRvTFS44I8qcjWdJ0Jgyd3Wbz1oEDgGOA4qcWNTLTIHZB8+vcF/++hzBvYfu+
ERzdbB11cGpoQBzbzM7r8v1ir52eTzzagzi1uCycfLzN3OPQyi546CrxhQI+rV5FXNadPBpajOmt
G+OQJhT4a+evTbA1MRoIm7+TkH01d2FS0OY3fCNuyMJStXYp+JpVL42isoW1BOFi7KDEPOdZ8VXq
qhpL95hFJ82LOgu3WkwSUYL2Ie1q6r1xDSKlD2QvQU+4OH3ndk6AFnTjZsik41e6GtqC105ida+m
Ahk5mRn1ha/P3JxTCHTUlegZp1xoUBDKLVtTT6Hg4Z3buweKfFywPCdR0w4p9zCAr4Q8o47gHQpE
OHG8Mzl6UZQb8CTDo18MMq/eZhKsK5gR7zfu4j5ly4q88Y4T10mSXFOZUdKiavzZMkhOUgKWbSC+
tVRaVQSgDGcsWMqn2fB/q9b9qNC/74C5Jh83aJLfkEtejHFW6DYJikWccWHDU/EzhyQcTzFFzB6v
QqPVbFKarHtlb6O81XVw4lTH4hNHlrpBnen5ySMbTOlx8bdERPy0xRh7iXM0Atilb7I3Pm2Ce2CX
WlzSVF7UzG+VsSFL/+53bCq5DzD6kTDRp2Ycswuj65WRQ1XH/4JcPlmbsr4lTXRujtBpof2MBn4z
0pSTPUNsFcQWrJkwqJWUze4jq5zlbMdmDS5R9t4XJtWX1I3icSocLovCusj9G6+CDi9adHWR1WtW
u3EuQoafKX3leGQLepvJ2HBEAgnX2pP5l87U6e07dADUSJWPlF/+CvToK75sPtoWJYBy2H9e5C0/
4vxuBVhEG3bFVmCUJVUWDg+3hgm6elz209ghUSa8pVRJlx9W76KPAPWbptbo4tlbMhInihrxAZA3
9M6VqPjV6X5TvCGgD24beAKQPwYUG3xU9gFhHCWNWXaAHFwVeZ0fRnthVuO4bLEfLGCOqYnn+TkT
wI/K1TcDt55bMTFzrCjgk19ckD0bDT8dHSxp1RQ3PHgwWrxhefHzZRD17c4kLPebDPkW5tnKw99U
kriTysy8bO8sGbb0abbARs3hE/aHrwmjMtGgCySGqY3lgSObyClRtHvis6oqrdEu+tFj/XL1m7cc
lXkaXOk3347KMRVTkuwP05CsIUFntn/+PUyur6yFGsaZbYMpGg9oRk2p10vU/T79yKPRCdR/F4a6
IkKd206LNgMw4khs6Jwv0YQSY4azVYIwrxBhW0/hjGOSbkpxXjUcUJOQj/mux+s3XRaBBkecMgOl
2UX2eC4NY3iB1TCx9JvtfWtoogLzUKWioL3OOiD3GPjoKX/AlB/cJWrbEFKk+X1BxEpzgDfCy+0f
dXYT4dgjfAcNA4F6qzThAB9ARtuBzN44O94O2T0NGbePDcs9lBAASG6bUYQQJo8orJ/U9QFu+l/o
MxjwNxd7Z5r2WdrAg0Bld+n/G+33wHXk/JJY5alq6odpcH4v/ubqJ0mEiub7FlBRVQ+uFy2YevMR
HP1NlbY8JcMmVvWBuqoRio2wWIUSmqEhHkD15i9mNuUCnVpLeDSzqavq9VIOHsN0KLBzu55EwRw6
ANneG0aMVlUbZu4iX48c0wtwwmJqe2zWTpEcl1SdV2bnLuvIrcgw+xEg+zQQ+h2GS+sh12VcZW9i
z4lvXnaaeklHj3H4KTqgQAlpHXrcUs1cxvevpWnLbFu5FNpPAAN3ipV7vilpb4Rw0A7Z3Xgm8vPu
3SGBQM7MQkkaXTWo+7S0cXczs/N3zBVc9d0inVFHIr5ASEmMGkvEoSMFpS5qKEOriGU85ggoi/ga
H/GbXUG4Gl1TBPpqodbXXXKK6xgldwYZpML8rxI+tvxvrIVgjWHvfNTQrDbw2jppl2QsVh4Jk65A
CE+7jreoPpXMV1ZJtGTnSnngJ9rtVIlFfK1MF/Kws+RShogACmTMwNv+zLf+WM5kyCp96FGpD6Dr
uW5/eINozNVPfCvMNwp33lTQknZymIp23QAGo6rTJvMddUnqD336RmPSai/Ha5swxNPQFhYvIi9a
bECSGGHyd/EOAkDjgRwbpN0wQhPb/so7Q0GbNPyFjQDJ9aIMccFXQVIPEGglGTO5ZqoTfRm+G/ab
mW9nqfrL1gb9jkVl1EguMRpB4kvHyEbQU6kO/GGP7NfK18k6kvrzVMmOQ9qc1/hUM/17X2m/6cno
BTzGc1y/GyBgehb7IfVcBzDcjDUwI7o0idrlH4x2nTPKTS0fgXjjdm8gqF25I8Inxovo8zXKsm7M
qcxq3iS20kyJLt+HMhasgTqje1gpR/0lid2xYSNeDEUwjab5ZKPWuOk4CeJyti81H8Dh0ChwGB9p
WpWJb2R0E63G5eTYKAeM3F47jzsBXlZfRUyYXqa1zx4BH2/1AsqsR0N+nVD/BDokGJ3vnMVxEos2
H42BaDS/LZ2jdi7lSm6h/5KtPDQW4K8qLi5SJiky9gZYZtmO3SJQSXwBmteJKFTlrDZ+38IneR7D
UWfbwmn8fV8ECo1WXSUH7AwJg2eZADBI4pjtuJascoI8I/rB3LADPtZa8pcJ4J+4rYd59K11Glq2
iRC2pp6ptF2Eg+MEC5A1Ouy7CjtzUss3OPnaVfFCCSfvkG6FY/1Vw8S2GinxikV4sumkli8W0oRv
HghYX8SDTEnwdmsfqZ7GIZDRS/WRu0XWSrfLfyuKbytR4beXyCcjUKsObQ8liFgx9Z7WkyGZLhnT
66omPG1E458Lbe3wxp7FVwuyKT5c0S828+R9l/oV9l5RIDcMWyUF69sqaXTLZPtKfTo9Wqf7gvd6
eMCRQuoZkq7XhhVoPDKr5DRuGNRrfLVMoJwNrYwmwMFPoFjfs6/xyJwRBZGxvru2ePvJb3b+v4o1
CHtpyh0MwgVPtQTcMHM95Hj7QFDo1q6ZZBM9hb59BUzc1qnGHxUyTslNy3SUYYOciSkaCOAVC5cS
G/HSB5BRX4nYuE5sxP5ELtVsn5nNwUE1BJaXJvGfMtZK5eUlf7R6h6rwaLFYTws1EZ1qqfgjql9c
aYuRm9dvqVbHNIuR9jnVZ8Q72rUQ3td1nfShZAb5EKTPQ3JTImBG3qU6mWIAwr8xv+zeLYjozHcE
ZoA34e7ZKYw2UontRlrqN/BRoKlMZ+NqMxPR38j8leHIO+3ZuxGO3kV0VxZ7aomHSoiH4703t6bX
0ei+4FaOZ/OX5D60X98nJRiwPjhMDUwIPRCDsO7mDywMocbw4WTUzV5756n7lkI9zKJjhg3MIu/J
h9YuxVB3+PhXWNZkza/EVRglqR4p3DB2/ZLLqh+dwh2Cp5q7P4Qu37jZGxmo/jis+e1MotPVFrBi
gBgh6ONvtqexz9mOAHRyleCDFu3IRkRlFhkpAQ/q0h1mZGvYSYrVO9n/PVL25StgSJgVoHtg78Fx
z6MrnfP1QpXzW8zlZChucV56iG+RIcN8dOMvNIrkRTe6l2TRyWzNIUNnjXmQkz6FeabLsn6YDYvV
gwvx1xb2N5mwGyR+UfEMCK7e/gvKBJifrXpiz7JBXYYUy3CuB+0GNcjtuaZVi/RziRDX16B7lDsY
SBpPo3MdMnFh+XwR3yCNLV0GizuBacwOBSu7tkDFG5XE92X1IHshLCdKFVXhYiP+8HFSkLwpnCRb
RSXYyKlBtYDH8+aQ5K/pTvL/4gwnqc6eLMhZLwdedWP8fSQqYg9B6ZtaKt0n35jJ6om0YQ8HClde
XgkQNGKFjuoZVDHJJvjMDSjE4vwPfK/2BPti1B+0llEJeUHl/AKEvJzuRh3xGaS/0UD+iQDjAuzA
Q2VIaAdtvySR/eS4ibBjzIB/dqfTAZNQmPWbwpbBDMZm/DA6mHJImmSb9MeVGYL5/B0siGyaxaKZ
WTYxeJ840kLN6XI09WqhzZ10ZNPR2B2IgCXSdIbgE5Ti/VM0Vu7jhNux/UqgSrravVBLYH/EvQbZ
1k1oK+q1GYm2haS5pL6+RtOBsuseAKchUhJRvQX6S8dnliWQ1j+XuOXg1gSFU+vQr/XJ/Sth5DZ3
iPo+LGB76C6I2VjLF9nx+iN5cwiyjjNCxB1I+T/20GuZx0ABmKkIflj8tB50ALcWojUYeBRaVqpd
tdTVFWOA/KCDejs81GlBo9ghlD3c5y22Mdc2/N+d9KQGKHSU0Z4CwfaINz/lhKnuj9T+j6vvqhUc
hFAWbfg6hxYSUYzCOrl+rheF0bIvxycnLlsj3PO1+ZNw75ddhiOj/An9JYP0DvM8cstARtJjPQTG
uRLEbMLxlLzP4Boy+33FkAdhe1vYjvQXfraFruCcDHKAOrisXQVpnrwjG9hVRlyfAQxE+K9h0J60
V6rfO3ClHahV3LaqL1XUC9kPkSWnuawEJuYtj87gsplqYo45s8o1Mh9yVv5CVdwp29TNZZ8K6lDu
SXAE5dUNqR0iGe+HzugxXFCpx8sddZseB1xpqGZli2Ij0a887wcEE+ow+1wKGaFza7ecTCtqfJ6J
yHz9XO5xlGTz3/a5LOz1cEYQ1MwzWVjejziiQzEcktWuY8aJors9Pma38IfMGzQUehaML7F0AENn
FDbliavK3x28Kf1srMEBW6ABoKEbqbAtnwG46Frph9qbOlRbWNGEydmMIv21xtv2JbqyHcxXSy92
zjsxKCoDh0Fw2xf7KHzXYYW0/uO8f0yBVTUatBYs4PXGmXnLzyPK77wFPvnp3NcbzRBKyllOqOZ5
dB7srIhmax3jmWaAHfDdyQfzIAmddwACRugqp8UFQW5ND21x8jmHmHZ8hz/T4gKtn2ZVHiV4PZkR
rxWiXpNkgoiqXWlwTkS9yj+M1qxaFtgakjMx4vL4Ou//xczaOugcJXxuuDpSNvsMTTpplgIh5idp
wuMBWLxyLUAK2ak3GXDZchgAE9nAMezvWAnJY+8vSt2u8DicVWPWNQ/LMIHfYhS/tZLlhrqK65/J
LFc0X8vWSI6Em0iQcfS7XYkmoueM3KMk7iA65TEReeX3sX5puEipJYHYbwNXD29qFsv0M196ap2s
IUyLmtIWztJmSGIpP6EqcKCf2RQu9uxIWQYl+tbWkGM4/amHd2U9DuK6VLfNdzSPaJpLkNzhEKDK
tyUHbPIjEHCm118ZdA7uRD0zRsu6CrR6MtjKXnrJ8yTJzUKpZF3ISh+xRz2Ybco5tmyBnMUBQAiS
JQi6sxPoqLXAzouP4z3DXu4a4ILe+dkmhoYt3khMDKNoiOuZZCvmxG0eqR38ObYTu4n1qxNNMoVY
z72MD09TQ0+eLkU4mRFdV6IxM5LwPMzaH/TWEZLZhXupVRtnTvcw0lfy8GhKz3xyhGN1D32YYG8c
DQZpwe+gMc6jg+kXQG5m+Dyt7C/EqOnUo0r22W2QCXXyMIXej6BUMBFfD3HTbE6EpvIl2bROp4WH
0aZnJxmQGsuGTGeZH7zUCEXsQDMtMeJTZ5zhNZOF5Sv/dYDHPXEyVC9aiIPIv/A1PYhbgi1B/jL7
ZYryFJPmBj3BVKjqfwsbUw5VVqaN8SWPq0UV3pszqVaQcOEFriBBejXJG0cyrYtLVlXeXAbCxg0S
9BjPf0eyHwzYhAbT6QRoPTpnOIqe1zVvYO3Eo5Opa4EWRzhTNPV96TjEQs5kxqyYOiGltwunETW2
GwCni2MJUJXTdqIga+2yjujKiyum78fx9n/+0tP7a/4AvnFi5Dspc8EGkUSCjBYowQzGqX9R+tnS
kid0DIP8O1sr1VOHYd2EuPMFrZkhg+NR9Gi7cqAD4I8eEDB8q6s+mBeUiM0Y2rGjXmINIBa60D4+
Ckjl8+xHKfe/yqy1p8wxM5tbbfv6moMGoHgXpF3PNVO+NuKmeDnEOPWsIj1witMOddcSeVTRjVX0
kjOwWMM/veo0jgGatJ/g6GTWu74nr6cniyfvPJ5KuMPJgRTG9at7sqWGxfrtKhy02zWOaWDQT7i7
inr+dTD0Iovt6FDNd2iJpY4YPtEZjDhzy9wDtFfXJye9bOnK38U7SSdG4EB42OMOJDi8zNnO2xm4
1bGtNEo0vpgGECnwbz28fzn0wwztC6H4ScWDXmzDvMOalWN/8iVj4gHRc4UpsoXzUxAiTCkiymiW
nUKhVQIErJ6uxQekrd3OC/s4ZIEYcChLk39e8GfsFDZmaQw1tR+TKhDfPtXBzeaPKRmK85UcM1Dv
6TVRHDRKuVBlH013En/593iR0+wUeiImLRwuv2wOu5yIBs+ucEAE/TJzkfpqiVgVyVKC2FjA5mh+
HnFNf1eORjhADh99abcHm5Ri5nz5QCJJvCKk5IJlKzlDnQJ0VYBCITVu3GX0MzaG+vW0YIoOHuZh
cyglhnB4E7QCCpwQPSgV1Dk4D3JeVt/P1HMo/rRSX2zJxm4Lesnwkn0L96i1T0+zVI/+aRyGydV0
IXgtkxSTqoSXHI8ayLkwyewSs0j+Y08znrZufT75qyi6uc3PMspgoQDKZvfm5kV2qRd1UcUJHolU
70FJqqI5Ir7a8W5jrNnrAmc1/awiorU6oNfsMLw6CE3D8JNSmlgiTZ+2ZJEQ/Mye2H9GTAp19JAA
q4acL/SX5NshaU7iDgOWY4yABAe1zl8fMKHM0rjkK0fNGLhbxEejvJ6Hscil9uEP/yYWEuoYczKP
oZGfP+omQqYI//hUHJB2sBhC3Mj1/HXSfrRziTR4saumsOjabuCnnSqYtYcSKvMeNlwEtYGVulS8
N4sHikdngcvzib/4D9WTYxUi/t3kV5l7OVMcUQerDuEFgviAvarvNVJgMBRc7C9f7N5x7R1vpVND
VnvTDcL/Irkgl4jXtN1TMp+VkxVK9rDTfkObSnftWUHHWiI6EDHKP/yJPN3JBD3niw0pMPm0BTVn
OEYwAc6xgJjI/NbHrnt5UmBnjHdNogeOe1NSH5twZAw3+2NnFztEc5yQCDD0tQqAIWljA/8B78JF
DW3cNbYzYGMVpQI8UCj1a0jxzYy+aGBPx9N98m+c6aMWWvBqRZhA9gv6t7gEBpIWbCdkOXmVE9G7
VQFcBMGQ/GHPoilluljMdUK43RAv8Lz+DvjgUGSf4B3THu2+uxV6M+uDfCy3paj5AoUGLuCApyCx
eJf1z1m+WL9aghmBEMoKq6rFda7DJ9+1s3dytRze874z9LUDIdG5prAAsENSkwyWobgFJ68mSjak
e/CO7EfBOQ/Rh3me/n+6+0rNKenhrU+qtsCUmoHG95CxM4Vii1dW0aUFmcihXtv5+1JpHzDC85R3
uLu5Csq2jQTbOKFU2HozBwejRwffat4JXUlA0tSXNCqRvhnhMDayHX8euz/wnQ2Rqd99w86iPBNT
sHEBIbXti9MiTEaMl5yrwoYX7T4UMYLOcNeKqcbMh66oKg4DT8CD6wzgy0y2CXpnFa0vlXqBr6O6
jf3yriSygDtDd7H+Z0lRSsshn8YB0O7iq8WUZwEkDODTuO1wY7uA4afuujN/ktWFY432Vo/e3l6N
NMXxALwFjXGfAu2c4VXMbpabSU7hUTT+ZIvk8L99Vr0p67p4gsdRVlDYUWuYmPbicxOqw/nogfRg
TTqSciutR+IKChIl/Sub01FwZKywAuTlcUgT8Y1aBQ7pfECr8Pk93YXk4nkFlxg9KkmoO5Zrz9WT
HOHTGc+Sju6TKtD8wgUmZI5F40vq3coFXxw9uXk0GThWx0BQZ9b6cvP6TyglCtYEQWg1pD4lvbCt
vvZr4psRI+/HFoYaDkviCPgSez5KY/R9+zKxxtYCdbSeWuLTBWaj4FlTnEY2fZUlNfR6Rc8GAjT2
gTpVpqy6/Ccn/sisjSJm9vUqYQe5BrtLst5thGgKqyFd1nvkgxZgF9DfpWrXogtipnihTg+5x4xs
UvGr2lZH+sZ+SKknzmUF/MCeRWWq20pLWphkt3AyZu9sAjajDjTK7NJYjm+WtbrytO5tKmE+zp3b
soeHBNd/GBGWw5/lbKxJPV24eP5smqhNhJipTkocvf5wXBjtkwMGUaH1gVD6S1U0jlPdEwJbakYs
raP7ZSv8pV3g/aSd+4z9/erctueowf20mkzs9K1/xz9GYcpEyiLT/54kQV2KgJVggVbFV6JXAk14
Vgjl5C5akcN4FrPm4bE6pEbw+NV6tU4x2aDfsFmbC+KE4tlE5++6i0rTFYsMiKOV6ERUeFU+7zzn
QOmG2xrzFZCXinSNdw2JamjXOp0c68IyoKzz6xtNuGLx6JA4P7Y3xgB90ibt60k+K6gtoklQET8z
e6EX6fFPqHsArtPCquS5+lAO6HtLsDvqtVGB6YcMUq4xhjbI27/OCmv3gZ/Cu4enoDUCTgkP1tnc
dv3oAI1GDmc1OP/DRbbcyVMZ9mySNEMjhiLWTEoSjsJlmybGb9W4N64wO0+upxNv4JH3wyaZ5Mg+
EOOOX5RA418uV8w33ReLYXimRvp0l3wceKvYu8pHhmWmZKjJzdxhVkvyp+eWJaFwlTnXLJnXoxCR
1z+Bux2P2zYw2Br0spH3z+s2i300OT8o3uVKVPAxe/NVFkaqOtu0FEshe/L3X11EOqO8o5i+tlME
vNNaI6p3RwpI6lanMxlsGtaN5ycE+dG82V4oz4LYNF8e+464m+XVdQhcHZBgu5Y9hcnXdUaAh0uj
2f8HcLRRurrb4JCx/YdfN7Hcp/kuxg47rhS8fLJOckf2sHkky41CDxPozbLoKgniIwKH3DyO8uMs
lHPrb35ed9IhdXYNnQiGExtRMhcQmOM3npu34oR9cq8hWjTiR2qEbglKUwLrPdvoq4hJWPlhQw8U
EF5CK4elN+rn/ZL2M3n/blG9VG37lzj/KlpZhox7nm2HeJCEZSw6ArMwiCQdK2dBDtcheVWqtYzW
oW8DApNZ1BT71Vm8fFvo5enDjMl7ONUYwDpGiApf+LS1k/ZKznzAyiscPD+/GZXmke1D+LCuuvkc
LXMtsjFQKTNekaw8EtcvpFI3b6jEMXmgasGijBWme3XivFj+QH+9T7sOMpHTwBnma+2RL9wPjTK3
BU/iyNe6qHmwfuCPzH2GtRJ65HlRaIMGtaSCWVsCvawuUVXNixnZARH9FKRrG2qMI0e04EPKU4Sn
qkWXzKv4ArFrpCSMkeAcBtyZ+1F7sBt+QyRh6kmdxarAKM6j4J2c6G4++/AA1jNwnTnEU+M9Kyss
qNjUMlZqi/7ELvx6JaJqeB6zm7vL3ILjAISoXsBWoe3kAUQAHff0G7lR4L1MO3TPkLidw2PwB623
c0FT6vGNZELJRSWHKkFRAEl81LIN1cK62NMyjM1Ov8KJhpKBsfeEKjDRViMFO4j3ojSfctbKiwpf
6gNaE46p5+0Ae9W94NwJ4gmkzA+aXIGZCztKvjr/bKVrJHKZyYj5r5DMOl2oLHUisRRw0R+wFOhR
Fm7fW1VPSVtEhoebvNvOiGN/tMDaXbSH106J9tB6vUwscVMTVp70RRWALgJoAAK+RE8+BeuWnEBl
BdQrE8dJrqwqeq4OXp5XH8NglHYqfAnzd336I6s39WJR+17wIfrGLgP3J5P/i/WQUAb6OC4E54Ms
8dOnBlaMVRL5GyjKjxhfVLDmUsuHwYOCzR7uzrTS1MaD4VEhhT3hFDjdYWolPPP32Epteic3i2Z+
yVprxXLL7donXrSGNw+vGjVmJhQKYbZ8iZS/yVlYQrV5bSvfog5TYGDmpfpH8/xJhX58XuiAIAgx
+LkMJTmLJUFsnScogjGviBq3OrHrjm1ryQ/LV41X8DV3vzUquNhBdTI9qCZwcx/tokQbLaqHIXyB
6x+PlgjCoIqBn8qQWaiKDr8kfmIpyfyx82VUfQeznJDroAvT0vQpVkSivnSvQ6w6rZEnVioURMds
IZX4Bc2UnmzLkzLSbXV8DF+pfC1u2WMp63W2yNTteHsBeL08/pNYFU63j7fsWsxZtvuuHghgJMOn
aD7KHhd0Hm8aOttjWIpfUtl5KnzB7Bi3p9IliEPE78+gKweu667BEYshJ5wSuConL+xqpccGkhTN
x1xkphkVOeWATSqIgdjdwad1CZYcAwMc8xBSQ0/A9fgyM5CHDRGrPffXKTNmXRfR3hyVVITmcQ47
lKGm+AO93z6Int2B3iZDfO/HUrR1PQMAZbeXvJyjZHRCJccRSOCGv68PqOyV8BX3/o7tE3UN9tm6
YUlwnoCe5W6FOD9+c0mnvUe0OaCFQVrP+n1dX3gn55RScMx69p+BYXZr4OR5yDnfXNcabFwMLuML
17M11RvSosFUDW6yGc7o8VC8+GqJJ1XiJuvgjeSy0/HLdcA654jY23Y1oBnD2V+bEPSEQS8yjdQY
NrHcMQrQfI+4nV3QpcTcDEmD4ZtCQsKxdssisCLGCIwCjq9VrtlpXTff2uuUlwY3sssE/Coqxe5r
qXzHLI29sWi6uwAe5f5S4Lqu4/aQ2MEn0HI7QnFBFFY7QmloJq4NrdKNOCrv1vIY6rcTAC58p/el
30oIeNo8OJahso93mKVbtk7bVqbMkUM9GdlmD3427V2mpUG8BQhzN5fyGmF4Ke5pwU0eN/EvBd62
cAZwNVYdBFzTw/YZlT/rk5jO55DOMmQTzE+Zg1zHm/yfiOQJTA0XlV3jxc/rlc1j/HVZsuQczeFH
2bXUACpen4mkSmQi2oXg72QBJwjjoywzKU25x0Ia8/ldZ3sQC9A/o2UA0WSbktxtgPm8cbG70iCA
YzxxMjD8JAkcFG9vY3cVjwgxc8Vq+kngC35JHjEHD1cYOhrByTQv/nT57V/oCZ/fVg0XKwwBNGca
HcTlg4QWrHSongpMi37k18PBWe3uuvyqNRNrXFiyzcFZ57g6mCD/ZrdDUZBJUE7otjnIdI4AMvgh
MG4oKZWZoyP2ceoh98hRWNsiRJqnPc5XsAjlTXbMq79ZYr06ib+AW+DnEQ1PJmlUOG9sq/AIP+Pe
YsI8QNY/+GnhtwOUUxHfTH02P9SH3CaGkr/VWktta7mkXplGBbJCxhswHpBMuI12aaGY/ZAvnH4J
YRy7P4NHB/aXOlQX8ZPXH3j8waatANJ70XNmOsWhM5WYmDA/3eU31NGrgeF1dfpkOP0i7yA4IjUP
FG7b5uMz6+s32V9VSgbIHpg+jIobooebkj/oHXkiFjyP73Qz8+wgssGswq5glAgFOY+NamgW5wuP
Ys1vLalmQzhdhsmeangACRnSqYGu4Qm5jFNicBMPGdPCWIPPdKKLGFTLEyEszZ4tMaI9pXwnMXKb
hfOK7opISOeSj7okMrDLJX0g/FwKol25GzWj2mtxZz/IEHISYWzHnzO44OoqpMZd8dIE6PwqaDOd
1Jlh5n+xSUkhH0lU3/rujJIhkZXHRLBUUM2JAuNak5zER11oQ40fqis8hLmqeypAME8rW4DcNqmt
YAzO0+cEbZQJfET80/PYM8Gl6VXToP+TIwHEMDsoAMcxQhJ/11OY7ix4fjiVyGZQy4CPWg8adRYS
ngWIMiylkRFF5xzZ3Q9NXlJt4v60JiKbedHk5LFkGrjFThyq3mym6SMftwT2YCutwRUlHI3y54nq
Cw8xY6kRtywCbfT41CC69VSI+hbXvyLVva3UUoIQCa1BNW1qoDepto0sNxl4o7qKDmwWPCMGnNuv
9Jqu3OO9/dtwD5JCw6xC+4Q65+/hcelY+eawuzuE7+Z7b1bmZGGXZZa0WTS5ZrpZ9qm9tpViKINl
rBZG64ZCf3Mgu7bvv+f3QVdJpdhaV/Y+n2hE9aJlnunqLOi3mGzaVnzr6dF0LS6defiovhvMwcRU
mhZXEe9jKRUZTu1Jf0BU8tLoVXJ9ocd8fF7SFxjOpU7Vnde48C2rC5cEI468v+wzVpkvCPiqI7bj
bDVDTbczFNGF0X1XzFdDeOgSf39FOVVVtmwV4DMPmHehFjpFfvSW5kkM50s2E947E460RzNYv24R
ZL9vjUFHPc3vFoHoLBYfvj2G2Tj9rCyue5Hi3XAuYPgCzGkbthoxWtgtperbkXVvT+rJKKA/i80h
tZF+5sJwqF5WgPkFVPLebpbccAxRr33VqFYCM7F3OboQQKp72jcNLudrTQXUowzhqs/lTQO7K7Ev
WBAK0p6KjxvJ0xWMzHoJ41hCEv5zEsh2TaIDJmZZyKYZqsX+arnWLqyVC1EY8b7OT1yk13zfv+k8
NdPO4G28bNzXUwcQjSTSEk+o5KyQJvgzejM9CZApApM2iBhPakZSkGoPqkmM7Zl2ave5xaDv+7mR
Pc5HOeZBLdgJb3uaw69kOF+9tNkOi7a1VOkaQYlnsEdZADBASux66k6zpFQMoHOG6rUxZtEPf2u1
Sk8RzWkMcYDnXmVMuFgKcWhXGjxVLjKEgPFARDmqKjMnYqIwVjznA4gF61om3yDNarw8RCxCN7xR
a1ZRrtcIZTWKGmgw3aP8A1eOzZ69ZjBh+RDrA6i5+x03TJy8jcK7FK/mT5+jqZv8c272zpfmfo/+
pD/fmx6CbmhVQrf3paHmNuiDFcklDgz10b55YLhw3OU2rOom1GcA38bl9qnrrQlIsmJ33IxAHjf8
gvnrLiSlk6nuRXm5KQDYmbwOHY/IYN0lMtKNO3ZGcZy1Gwym4VRF07Be5P+mWtMcNk7F83X+Jj1O
yzsqmVRQuAVs4pN3bFhHbymnjZDWJvOmNdd07CFb3ccyJ20EVAYQDrtU2dBjfCJW/bz1Th5uvyZg
J7WVt+PAQwwgClVhkGXC9WlXohewg3kjH7ZaF/qr9iAFJHbG32O3ins2GBheC8pe4ixJSsKVXK43
TsmsGlqGBDo8RkNRprkMquw2kdL+qiVNJ1k3U2414A/7vGszcGl1A9cf6ouozkmz9DZe+DOqyzBj
t0g4fH2koV98n54ZHAAhdWtmzxXdAYkBWMDrmJ+w4fojtMeSh4JH8SctRRm3xwzMlc7Hi7Qb6woq
hhTFwRjmgLIyWAzqgj/NSo/YTppO+3t3r5yzCKGGf4Yy7k3U/MftLFVU/nK7xJcKgpYHxE21L+Mx
mAfSn1S7X2mRZO0p7UhSsaxqHIyFtGZJ5maE9U5znUfGVyGUT0WUUsRTWvLm6QBDrIjIpG5vBxow
4AFSyDe9Jrm+cXAZXkdkROuVe0rs63X+B4/dA11LX3Zk/yBnb6KE+r3f4p6YyS8oGiPMh/7J+Xqu
GugNDwz/m12mUyYNdC8FoIIrXqYOwSkEAOceMaoE6wGtKwQZZQUmjN2V5YCzS4v5k+qvLmTvmDSk
GIdSomolnExwnhHXeksi7IqBvCFezdTyPyJ7cjuQdI1IqYQVCFcU8keqfmUxT0CFufGiJDOQUzFL
7v4S563rgkEa9jfiGBRzj4whq53eZV5Q7DPSUgPrfEXk2n+ZU4U0r4JMUlZ+PhJyBLE4HqLJTJSW
Fn8tOaLFSs8mfAelcAliHb/B2WP2+V6YtK4xYREh8yje0MVhifLCbr5cc/bHOdu552q1mhFjzR+A
FanrIrVeWLHzk8psNsM7RDvgiPI2lupjlCWUxECMEnPXpKlMDs/TNrbCmc7NJZYCDMc615FGPPQ0
MOV2P/s+K0ykdKun9AjcT/xO9R0UV3v2NSd9z/m9j+5wdRL6Ql4koK5AJYCXD2w7p1cxUF2+PuPm
f5ExWarUkDGOCjV7Sixgmck5XRcC0Z6YONtOQ0LezCO72yQzhOA+WvV2wzjH7+B5aKgefDuZV38r
9vwgSM7f81YkZNOB+WmhQHThijE/X7n3qVkeqWUwTF1azF6mGnZIcM/DYFAXTTaqbAKyiiv4TSFf
0q2NJHv4pEkXxssRxefA/G4lBE8DSntvLEeli5ypLJuedfXuV3Xk6DSQgM6rd9ZrcLTbT6lO+4zK
6K/0KpnWAm/eHAjs5suGj2fSBB/frKsVfMOfgZhOaduZZpqYGba1XGc2f4ngQpwGcLIOXGSuHIM5
pbrdJDpqOdIKDG2BEaLNH9Rd+IbJmK/0zSMJecYgR8TwX7zvnucEF3zg6uxgyJTWkDSW7cTsv7lG
J3sRj4o5Awl7uC5zPaR9A5BfAvMFrj5f0FqxgX9j+9BgRgD2ovNYuiwIsCqhT7Cg47r6XKiGnrZn
Npgx8wVtXJfI3gnG3pfhsImqV2cf4UO8/9Go6UzyhE+rnI9B6z/qBSM7tBmigf9dBG1VrNnMWW8G
8HHCrIqhDGzg49mzjBhJsFMQ9ImFOCqofBQJH5mVoUijHXakTNThrZcSCJLyH5wb8u57GOsPFZvj
/NfwNU2pWgd3qTSh2FvXS+jr0j7EgU3pTJM6KFQWLhcBnDadMddlSeKYkYBG9vBIIk4B1vXVmpyx
YpDWFRrOv3lmR9A0goVf+QPakWN3ewXGaQ9FHXJ+T7Sanv23+0bXmiDEPkD4EhPEq7AkPW56075X
7EABqqPzqu8AKP5jM+ghDEgP7OzYQfaC36dPoMv37SSzFsR8QIhg3BJ9ByctJ7ghNnXnY5pOXkFj
fue2zTuSfgVo8jeZ+BSrFPCmciBjd1lWzW74FBjlYRq2c32yOmH3XJf3VixJDB/HE90PefEWSApo
KlCHAdzKdMUdBKPXBJ616/T1J+cHtOTDZ5wErIdhKL9uZ0/BCJDRKPovwHEfbXG/8Ga8P1sNS0pZ
rLiv88kuqk065Ts+YGBKbPzBNRGCH2BLKEJWBlDckG0+UBXbxJKtiy+7G61V8XFEiCUkTEFWuHPk
z8g8TSKThiWyVY1pTEmuFVuOWdMB0KITLetb6GIB+b2FWAgrkhtW6NU6E/NZnS3rpmqeCrbvKN8h
oyOw7beDzkTCg3GhuPvvlQcgPVGyebR28Darg0nyu9t8gPXWILq07Ljr/7Rd4XEob7WfhiccCtFA
H7sirDBNrC2XJEqRTEuuQRZKTGkJjKu1scZzgxQr+w/+dd4S1zmf5BmQq3dWoSZC7cp7vQZ2gvZu
+M/FsFblzFoQh/7METs1BDb8oBkk07tVLGiCGlWl676m5ghEMXe3UTAA5nFqf+YOuY+5oYgiDpDp
n7YHk437zG4sJMP/NRMeh9oZeGF7vapAfV6Lgsubx1dTB/sPbJEjh8VxJ/3/OPIoXNCdGnuHRODH
R9H8BvVETXqCHILQt1fcF81vbXKCo/erlRZRqxjohpPMCJ796b6cqfKkB6gNSiyUkevFSVYw2b5S
h6jOdjtzSuxq+CKbTDksRpjktCUEknbHWVARRyJptmHv6h+HkydOCri6WUb+3EgqFE21HBoVMHiD
E5ksjIu+nHUwzX53E8aGp/8irtROQJgwFF3MTgT1wBm7IphEWpZzb9kWYdZIHv+ZphNp87oXDonj
2t3EYqVv5KjVwmsyB1FN491nse7LkxynwCVaOvkG6eHeVXohegBSJ90B+cur9tQV4M9qRgm5c/9V
kLCy0Q20O+U+BZb74856l2LcF5v9JpwGrITrNk2EzLgvcZjAXMrJp6KIVTY7DjfKd2h+RmMWXqNu
neyV2CEqZmxuLmuvsiwQsHd8uRkEFmtna/e0WipGi9QEwne1x+74cDhSCYqzeYwpA/VivQLK0G6t
iZG9n788xtExwg7+7QDVbtfSeHXnMuMkuh1MnpCo+Re7AnXwplVkZKKYebfOAuHKDekb2PAJJmeB
6wBYhjJn/KqTHr/KbxVzFdMEo6DJAMtyDwwo6T+etXWA4D4Z58guXt/P4ZC16vyvDs36/IBkV7Wm
FVwS4+gG3Y0SNSMltbSasZeoUvFSMWV+QnAQ7ijqcj6JWBgtZ3ZoxjooWZvcVCTtHCOfq5Sw8nYq
FeZT+45r5E2WBIdCySgmPfMQsC8moU74UMcSYOgoq/SnqApxQuk2MX0ypF+LtSLN3n3yLfQUSScJ
N/fxrYlZ0UxmnN4TqVOS7SmFMJB/59dcgfUD7p2CpWNNxQm3jq2Puj50h3WgeEVgRm+C0Vj1tCKH
MzmIvEltcRC7zK4YLXv4yOFRvk9HRK+VRCnDDVnp3pwDE33jwfcqtAI+k71f4YIujjod0ruythqj
7gPsSZe+0z+G4PRI2zg3ACY6H/xSM0xkEniCBb81hAQXBTvTJ64cu4hFSg3fqZ6CbNxYFinonuwy
QJfQ1khgP8/TrZ2Sgwak3rSbVgbar/8MmFJ8a3Hycw6aZ6qWWDjrOyHhI6Tw+VmQVp0pU+W0deTq
L3qI3SNIS9Hl+gIn2mL1MHujGefZkESDT4dzjxxGWFqeqr/xFNBSW83WSzq9E9Gq0IgaCOREa+98
8VzLoPfeVQeVG6c37Uy8G3OblqAZnEWxws0gYAMTrHzy87Fb/30xYEGdmDDbF8m7XDCRmucFqWzU
cRyV22TgJUuGZOJylVU7LK1TjXnWT8b9Fi8C2BFfUu8stiI4FrnEqWyP9tBoTUhzoKfas7JrH87x
5MZd2kW9QNYH2jkw9ylFSc5Ykhg22VoyH/5mDIhiAIuDG57qX5ZiZoNj+rRKTsgvQXGnqwZn9+Rt
dANmg26i8gGYwmEKonzHBzG/taMPCQnnq6aNM+fUqT67WwRateM6oQdJx4VkKxiRZoOhlWyGf3p/
7FgUdgkS+lcdw0u0VaVUySCYigSt5R+Y3x0T9jaMiPplCgG6PE2jyyhf8qQ5yHfbQv5Y724hsF/Z
/EgZ6ORxo0ayaZ52rWhfYKG7qwsMMIVNLMVTklK0yvadr2Ks2w7pDhNCTfmvawGNlu7R22gij7el
Huu4RtBR5skVP/KZ3k3WU9d9nyxs9FEgiEwsSJyMhStf7TMRyCAuuB03mfS9jHkRKAVVh5j409SK
OcVyob4jJh7McOQOMmYblw1hgs+MGaObcLPs5OMkeRxYIyEd/lWSqOfGlW+qK6gm3Ykha1x2P1RI
qlpbo7KwCOwBjM8HR/1T4Y12glSfMqWRCuoONIqLXlhlvfVYMH0fpE+kjk/dGBa8vbJ0rBwXxJWK
fekuJorC9Cpgz+HpCqQJuVW/L1pBVuQREtJp7Guz2CGLE+VhB+Ynze4hQ3l9W4yjcLXO+vGfcXJw
qLT5JmtAAfdhd8kI+I4Z7sYGPgaseqblo20lnV8gL87YqUiGoXZMv0QF8gVDbi0qjrloEp7jnTSs
HvhZPJNCSz+A41GxU4PC0wgtPT8ZM9FgGC//uXKjtU6QxaGu2PEfuQTG0/OHyeDh5yd1jVofgcE7
i9+wqyzZQe15l6iCECDLH0OSZL0trqZmE0UiDTiAOvjK9vbVwlpmYQfOWLGMdyPrskGZgQkNo4jd
TzTU+Vid2QsclY4xGENUQg6jI93E3BEYQ/7VyWhQpd5C2cPI6WtdI7bMO4MFyDuByc3gDQ0amVbl
i4OQMeUaSUZu+JG9XJqEpMDMpkzupnD/sL8gbAfZvYG4OMdZqb1EOmN9SDgy+x68H7J049BjRF6F
7dmute/YtktAym2dzblktQcWEvmVo7jO0zbqZFhZvoDntMXM6afA3vg3qzpadUZ6snAf9QtSr/FG
UBUDG9k4QcJILre1H5KyaAY0R0bNrSnbsPXTGZgwDLBHvVCxwWFmKlua/kwApVzsCCuY1mcpn0NE
34PB0Osm9a1Qh5wKdWaK3DbB6gxoZdtk+wQtlJNPDhOGjPQMOwxmGVry68yauZEE7J7glZ6hJE0C
Kd2KCZF1mfHyITV5xrd8Ilqt0kQado1DOD8ur+MvcpWIvhMhB/Hi04HfpQsrWFnp7ZV7lis+LTef
rnhKI4KKMXDjssKcRgR1Va1GHnrkcSyeZWfaH/JJnjq97xGQAjw7DQnHCnjA2ijb0IewQnUzt0nc
O4jwPbIH77ywwcbaTjVfCCwjiMjw9wJHOXaDBVF3dXc535rN7qLgqdFwqw0SlP3P5xTf86Vz095+
xf8l1z4CO2eNcboQC3Qq5gQlXNt+n5RmYc44WG6yA/vYB1LGlQpkMYFgFjS/4K7Xu2LOCCWpbUZG
+7+mXw5Dd1m7bF6YOpwfK7x68ZNTvu5W8triLGa/ZfWXz/Lo4Hk4aJC7JglXas6O+vnrdMB5I5NZ
SNKt/ovF4B3ZxiesFfSBNfE19xg28AX/3VzAiMCz3lZphwTBq2ivsuSdxpWUkd0cRSB6fXvxWSuY
rn880UEUNHCHasly2GA6rPIG/e1xUDuIj4tq9lG8/18vALD45/N6vG8+lWc37LtGaz0MPvQmLQY5
Q90SGYy8l799q1KsUFlWlWC92fUNomQSGy8s0lXXsxAFpxXMUtfYNuiax+GXW0zQK1X74dFYSDaV
GR0OvquKJqED1tC4elBIJQqZ2PnTSwCrRLi8ky6wJaX2yElNSrMIRM3RPSXPijaqbnVhlmB/+6UW
vMtTEzm07Pq5VRZXES0sFkREkK/tM1Spxp5PtuIeXJaAhx2fQ5cMjQ+ypv98bWMVu6/bH8A/YZYj
NHcI7BY4Y/p0atsg2vkWdaeVgOIZ5bPbF41eTRb4NK/onKrRpoElmuBGek6zNRqzOdGazjtN6bf/
5NFpursvApjpxmk0Iex+kdrcRiUI+O1EFFlnjPoCok03vkgz7psfAjiTFZ6UbAcVrvsbXieMHFHK
JiiJ6RSWhd+MjZ1/YO++u5hEZjZO4Kug9tQRO7Q+D5GkcFrtNcYCMLRiYf4ibWJkzYzhL3Nrlskw
hS8WD7sJaR9kzqlFOFgDbzQHOHJTyWEKdGuTPOnI2CYvXSe9bAZkbca9nYzPHCLczL4LtG1I6KY+
IlOHJibpdgGtDYtOR42Wl4BhOoZGyBIu38bbjuRS/a6xWfJj/IkkbGVs7LyO2iDquRpRvEaQn3Ka
clVKvF5vywNdWRXekXHLjd4oKAuD7gV3bBJyeV5lLCS6kg2yK8ao1+piZKDWKdCqLJj7XXD1MlTl
MzUgzXcJqhsgI0/3UiUs8bSZ69DtsaVLD2y8f/3x3rJw+QhrOh6AVuuYLDpZUHzyZeN959eRCcJV
x0NmbhLtJAAOvLTu6VTVb73Hqeyl/nkqKGvJk/IK482KwFh45ArTfWKrMyvmBNcyL37SOyg9/Q+M
Zuvow0jsfZy5DLwcnBYy6riFM2X83ew9ZKGKMQX9QC0Oct9saY7R1N5EwVPBq++8yXUleK3YWgm/
X9yE9D4jkh0r1gdCi1l/q3kUMOzYRFZARGcPgthMXdG01y2xsF2XnAYY0PDwdEZDf1ubJQeHf+lH
251Rqvu0mB15zY2QooMf0mOp4lItl1zWbMqRTqdZaFRUCKI7k1+0Z3jXmZEkX4L/94C21Ml1cCzV
L83cNKaj40Klrj+hVx8i32k4vZ936hRi1K9zGtQAxRYZfbozLlKfcfXmCBBCP61LHlPCMapnssgT
1YjTpvRPQUbuMla1pgANx1zBjogaecowq7rgbAmO0stTRSBnC2wQ+DZOCKYFmYlhxiMl2fmCNUWF
xQXN0LezR+C3N74sPic9FmhJPsxw+gk58TrLQlzddeA/hwAJtVjO+UA5e4fX0IIDYV8Ot5epLdtV
jzhfKz0UIDMiftLo1MMlBwKbMEtau9t3iGTDM3DZSwC36ycx9/E4ZtdQ4oVLBb9g3H1TBqFEmTqz
Qf7A45Bua6aylH7NuV86ETAdUAwisn3fC3EaS4j27DeVUogYHsz0IfqjVQFcbFJVYOLHZ/ZqkPwR
sw9r+UEfCj4DevdMlGV/giZCmYF+2mzIKftTf13OYtywade5v9s/w2H/RZ44EX6wfyzSd5wgDDZw
mjU3DFiWM04unwzadn0CW1AipgHLpUABOJ/l3rI91GDX0qVgQYf/3nX5TtoboHSDZA1UPw5T3pv/
pInyWsuVWROz2PyoCR+xFTw4gW2ieTe1980Kr6kLPKYBoy4okcVpNho3qhOyuCIUa+PTCQrsY3Pe
qR6KbwkcIcFWEW1ZhmBwXpkv+p2MfG84J6x0NgfJa4gs4NcyHK2IA4OLhHuY511GChZpioAdMGrr
tnWAhxgZFFx9r+s5qFlbr/gFHqueAwVN569pxil0yK/P4aTqjFC0GEA/uExuqYeKYN04XJisD9FD
rQAbUzCINi5Kg6V3E7JihbWIKOuo27JOT/4wB1XAMQW7WT313tPZOEcXjAYAObT3Z2uqaJhDx5f0
KtWbTbkSfy1y9cLkfAZ1AJh5tLo6LRgNFxw4BC1RpUf5xT+zIdA8HrP+rq4yuGfzna2PNfGjQQFd
mvG8sV0uWV8RkCxc8hw3wBWQQK8P29kIfR7G1sHMThehIy7I79R4rR/n/nDe40scmBwqTZOo6fKR
FRfSnCLjeejHgCKkMXXRbvarZI/d/8vFHz07PlJeVx3WrlwC+JiIcEspI280OvRZCCS31sBjPEoT
CNhYMCm8fXnwyw9c7YSXLZ3yC4a45XA19k22kDDFTbAs6iom0V9FOWTLkMpzQZXmYPuTzcFv4p6p
OKHsyFCibmntfflGedNwFeUDdnvuzFLjTjf/DjItPEB2Bzuc+dku5Qs4Ccf3x5+03yzbVQGHUU/H
05zJtuLIfBKAA/mH3NdnEquDRF8DSi7WllOa2QEjELcGxZtatUmnwsAr1IexXoZ4AJ17egKH2atk
30Fkuuomeax9kAoBfUGIHdBfPtaHXwiPMyaFzeg9upvEXzO0CI5t9vMuubG1Gr1HCAE8DBwaj0o4
gvZYh4ARdyF1jiqwxt6t12stpH6qHNaQDof/Vh3trWUdK1ApYAukHgStv73a+xfIwH1MAGmO0mI1
xlxp4K526k3pu74VN5o2uCsEE/F2dPImAdjfn7mb9BeJ0887tfI1DYraDEQzqN1qnKR+u1y+JBLV
Z0LhJ5a0hhdcgYEsCkrsF0dXcZaVvuVUhQZcI/xloGpMczmrRUdFpkv/PW/7MF8bnC0sC5w6XW+m
uC7byvc07Cn5bjZHDkjIyUOIAT0tnYXzEtTN0IA9TYrcqem0u++kHWfmYsC2rs30mQ4OkqyXy6Ia
/Uo1dEZFK9s4j1AmOlNJBU3O5rCS7hW4/RGlppW4q9c3LZN8CyTDoe8/xga4if9akRK+Z3tDTsn7
9Ge0OjheocUSXg7dumoD5Pu1e9JAuI0F+nTqFcHHa1scvSKC+0CxeFPMQBOcLBX3sUtt6LLl5Wk8
5t93TqAcFFF01YnHhGsDLSa8lU81k1JH3B7ztv4Sbo6fsMJT2pdiChhpqzrAutwalGMPYmssAdLI
ybJIlKtyLs8mmi+4EEjF4aBtK9j18GbSMxhA/4EjkwYjzkoZcvOFi6cs7ZMSJGKCiiPv+H85pRlG
eynZa29lvi5F9LLTbzsrKIapOBEcsmGjd3rfqJvEVxY4nnCzQl0MSzK1lVwIOiLR45O0OyiFqlSK
kaYivBnq1au3g+1LFXlfCSVBDHTNupYskDl3InALiANAt9Ei0zsJ3DGesZmboT6QteMxqY+rK3ht
ciU84ljenwgzetnRQfw9fAcEWzvKM7doTc+uPI2Vdi+RuxPfibms8n6wlbWL64JDvMryQbJNzgBf
mKW2c8fTtTLrcapI+5USgkyM6fyXp18z9OOYItbH/pN8ACqqhVBhY7+oFWKDAfszgG9CqwrYOYmp
3e2sj5rrFe1i9FyzoQC7OdyDvYWqGIjy0F+Tq3hUaQOCPaW7B6K+4Qf/HmEukhAdths1qWarorXH
x4KhsBZ7Fea+Nfb0T2Kp6/RNY+i5FFhUehr3ZNMdyfI9MaYjn1isKj4+Ohx4PGltGGXkBA2T5E9I
ALKbtjAW0iL94fBUpdv7nRAYKT58v/CBiYQUvRe+gFynoDJPHLLAyhsvr1Olxohy3ZsCW5OOxF+m
azoUxbW2axA3FZ3UiZrVBzvPyVEvVQTddv6G0DipxTCEEcAD1pMbibNduB3V2EelC505EdQXn9xa
LZtGkno8qrJz3dnE4ERnXZAJ3LfQzJzBQqXJ4Npz86T48PGNh6nCS7TS7eTgPxSzcaGohsZ9J84l
iDpzpsQkcj0iEUQ7i/JJeqzhB7LMQHGsuP53yvBE+WAdLAAAPNTeosgw9xXE9Y31f6PkgyRC8zJw
K+yP238k3qq60U1xYUj2JCEaJdYAjn1tbWAPBBj06qnXjXCOZn51M/Cj8s3eDmBQlO3Wo7DX5md1
qGTIVFbiUOxMhMjRpT2E7efn+E5VycmCZoTjDQugvOARNKeXz+ZiAIRnmjbXjN19Cd+eOVGPyqbD
0zT1/wdYT/Ih1Yk7Z6SiHZDlRo0eohXJsPJ7pUCfZrFmZ3lQDJGx37LpAJhUUxBF4Xl1c8jElo0Z
4XL79Wr8GtUxkkf+hHxWcZOAj6O2AoGwANGYx1eQ2RSV9YhcYq/0fdOa/0n5Se3Vs34X6N5+2NFX
lBCKl9voIpIsy/ZU2I4OkQvQxmykIAi1kBATr7XUqUvbzX8Ikl335pE1j54xgZ7X0W/ZBt/Am58J
1soDonjyTGflAEVDDkbsgLcUrGODpDFapnF7+sXIYZdZy3pJz5s/hvozZakppmGvwJImtZ++Q14H
AL92RCG/raYc1Vs57p5pa647O86BZTtnVwuhLC/1Nn/ci+ac9+kEvo/Y/Ek7G5iUggEggTDYhpD0
zBHL3luy+bcMf5rdcAuZ9Vim1UUWAbpVdtnbBWNruffytXYXtURVG2+fyhHB09M7xdrd9GwHpiQk
8Nhd1qezE3iC/5QP3R1A2C0HnnrR7wFm01rc4RKMBGLwIsnybG3Bxxhkw+ihPk8XLrbtpig+heam
tMnt/nSCzNRjagJ2OPQea3ceBKstSeRER5u14JLPgt7R2qPt92c9eo2Kz8S0+uCKURQNq+ko4vKl
7hU8CoQ+frmEUANfhT3+toeLSvGgX454NO0ET45XaUz6pJqHOK81N+xLa57/k0GmLV1kET7CpNYP
3TtxLhT/WMLZ7EX5hA7bwUG1sH3/YaK/eSL7wO+Q2vl2TSx1di8R4PLyC5Ubm6lthpCSmccRpbNo
zxO614s7OlnqenmuooRuzqqTuLuNCIywdGiMO+Siy/CH0F0IU5Jz9jD5kOT/HFh6MufiLc1OVLHt
Wx02Oy9hxQjolnLk2Ww6LHdVN5H4HUEeEA22UprsEcVDnkaUAP6KAOR68CEbAZXrMLTxt4pGF+LX
UYSvpCcI9JmHF0ZOlLqOintFe5pPcMcUNxS1Ic+MlHGaHYszKFMKTCSju086+LW0BkYxkNXHzAzr
w1ZXQFG0eESk/hvDCXNLKfNQu3E9mfDtYAlrrty3iGpQyRogTkh9MZg1axf/Dq1KKUqrGQkUuyoL
EXyyiog8V2qFopnCFshdAc6OPY1vcIzj2c1txo5vugYfjA4LKxlRNYWsLq5aYFGyNRb+LAPzyIyd
Rtbt0PzCGJMqN7qyWAHS8MZDVinbjQWRk6TPMa/NB8YwSTN//KHSTK3VRYsfkxdzdH7zvQ4x0520
d+MYoG7jko/uaTn2RJBoBVJfou8XYXNtpgg8aSmUK23yLoUTe66aukA2E8MQR7y3epqMKEfk0yP3
XjOuZGSolLhlJauXl+OaluIHLFvt89iEwnGvk28Ln111OG0HsaIvVBd+B6Zz52h2AAcPzuhns5lU
6GUaQlXQCPSyR7IeK5PV2t4iMxymp0EjARtHYiVLXw4pHEaF1YjtAYsqL1FZwiEEon/xKaKdVcjV
/nhkSwOgiuetjepENM+miTMM0nIgDK5H4UqU5gpWsBLWj70f/0AIBAksPeDcLC2IpLfHC5v7eBfA
kSf1/kIxyGAAUD7EZu8GPvJx6MgNuN4FtRPHgw0AD6pPy/MEFCllFkH7/F+aH/blOYpKdSOVLoOF
4zJ+xusbfbdXD8bnR6QzPotkIQyjqmB8vlS/EB1AklLqEUB0j2wzq4Nh9/BhS4UUcnXBAgv3e+4S
QyD3YCo4WQOItKM9rb3SlD/gDDXtQy23k8Zh11Wy01xcNlAs0wt2FP8c1DbsQx/Q/+ayjNrnOV+E
p4+BjFyulvzMXBrUW3fuh2PO28mBnNivWeCaWMpR/jE0CkFxFaLBXre6yOKGjnn4nISllbTL0Edz
jL3UvJhMqkUC0hjE4jU7b7Qd6CyN2+QVF22ifuHDt3YMDnmzW4xAnP0YK1+ZP8xFbZYnFpAi7KlA
91tY9vIKQEaM+ngz44zEqtLBMmzF/S8x11z5HM266o9h51LjN9w/L67HTAjlOxQP0d19DkJpOl96
ItZNtG+u8a0pxqP46yeP2Lu10xyAzTtUIRKxgmc75TjGYqHFMnk1inBKtuiWHDjANP5KGAS2w6RB
k3MrQHyFzVnZAponufhPuWlIfxKL/DV/EJCYr882ZwO0bEwzONbVYRVS5oSuIPJGYBc0Yy4rXPNA
FKjE06CMkyo489f0Amg8THdEEYUc1jMptqQtbpyEE7w6o0aQzPUMvTY+M6faOc/PKoeRDz6ygs9O
q/8xpavyrp9JqLp+j5mDUB1xB5t9nY4OzeAMRrlFB0hUmN/DBwAJYyp9L4QQKf+HHxPxrBXGrLi9
BCR92jbJwFZ3N06mIlW7hzfg8Yrfn4UhUipIH4HsRrsRK4qB6amTeh0tce3dFIOkaIGXt4ttfrTU
dN0sA1XpELT07FPlnCDi3GWt10Z0gjnyWScclPDLDlZIe5aiKmITKVtbTjDyUYbVqaYpU5QZskrW
DdyXYR/p7DEwqn6cDDNKmzMrj5siGoGz7gxdlr0RvOEGSc4MmkRi+Pz/ZYOJAuiGUMe9tjwhUibK
ZpHjDFIVvgLJ3j9OCjb3jj6rOj1ndG31WmXm+GCyKyjPfa5V3cSRAatyojr6TaI0xgBjfrjsuBYV
AsRfF4mKLONLunzl54SRlnV6pPEi6/DXYau/nE2j8YFUyv3VWtDAn/xZsda+lKm9FR6urd6b3hoL
rVECwlxsOExD8yFzsEGvJt148qqJ9qpF/7PaUGvgRQkDtxDDgEgu1Rc5TeV4NFhoDkt945/JQZRT
lK32K8tafVqQoluRhiwGKoPbyq9ZNROfkNQeSIatix88Nx3gcOQFcGPt6eXsUlIJg//wa2OPsUIG
f6PEBIcWZuJ+SWabczLxLKXyDYWbAH8LtbQ/MkYwEV0YjHfwCVp9Q3q7xg26/DnwbkeFmcYJoJwy
Vk68glNDQ2w2nUeJO+gQTx+YM+w1QeRFv7f7LuENXDr6tgJtypFV9lzn8lHPPm93Oq014qXRFnHT
GdGG0+JmRMjOhlAUfj7Cr9tIJIVVTnJlC8tVl+C48jUTw1mbQ0Z1/jm0i/OGlUz7TdW1vUMofzbn
j8D63ZZtQu/aNWvdeYUrgObdFoy4rPwEpK/DM74Beusg+i8nGVmilutFTLaMus08KXDzLRpnR4yM
7VrDMnysGYxhmWth6sDSHvX2a/EB0IkTe/fqlW8ddZ+5N+2rEaj6Aqtq+uTncQdKiA7QtWn7dDXt
UhQL+BzZfTzdhXRqXLQJ2LC2GJkrr58kQBxBKC8ULafMYc6dXTYL0uG27V7PqPJgkrzGNRn0czLR
B6I6r0XkmklX3zvJeYTFG7B+XWCLy7KRc8JmYw0aylNW3oY8/bveayY+pgydKhdsKrJTaAAcex5V
bVAgywxAbQU5XlZY7Mc6InAZuxIW+hSCLchmVpGGLCgU6HrJqXxGeAAbPhJC+jhf8AKjQiqT0I+P
WYvn6d/U7i3ae21ome2oXkowLmzqg7cd7uJmp4HojD8LQ+2ulHp1DFSogSvtV9jbxleluz4/5eRD
gl5ThfvZ+UX3X6HBve+pcrETLg6T9jAND/Bx+8F5flSrS27lmkExcZhIu4hqzoV5ZCevIkkni/G/
ocNZ15ycSHIgd5IFRkAUUKPwNmq8PlAEwwTmB/QEtDkDF6NoBVDDZuJQui0YL9gv0N1qK9RNHA0s
qL2BJgIOEhAo0nsvwrUAwGe/xLZCSYiCpv9uG7c45QZdCnCiNb4Ip43f5cVcvMBdib2IiP9DL5xY
RfdyGOKWyjIIvzijNuLxG8wSLa5PXySkDV5l4/9wED8ldLaAwQycni3bMWdlauRRbJI1+SfFXX90
ruEBG07FgGoqXoUmGEL8k7lWMirCAvXlr807oRWpQ/yMSI8nmhk7zQmkV2TCSrscXjW25CTZu/ZN
bn+amghvqGE/VMFgJ7xRR70h8bFosPeWdw1vQQcojPIjfPOBIGaHix66x6NIA3za4q45ivykciwe
VhDJ6Xh5HsviyehMAON3ai8CIla+YwOeExc1f45xqVYdP1A36RpBDgfcCEm5mxdF4RDWVBuHhXAU
zPJ9dK3bCQb2cOX4iuVX3bCs5jbyFMKWxpp85k5zSyXaD4BqRuIiJmhuZ26bfmwW5Qj+P1XqW1O+
NuK5ICCJd5OvKXYrrysm5wnIfAAqkMz3mMZk3szQSworBe2ffcrOI32vr+iH7vk6jAbIxxQPkxR2
IW3oD12cqJAyGaDbkcWcXHtAlCI95yaSoqEgBh+Lbr8Lc3ADaZxPM31VyTWc/oCx8TfWXuhaV3BC
UYc10mi1T0SXGIpH0I8b5PHqs4I4Iec9KLp7fPAFol9GfHdIx7I/BUMJa0Z32GmlDnkV+/1uisG+
Mfl0IoMKIkjN07EIxUrmYSIpWfbO5VQjnP9R4r9mh4DINjaS5T2CHjVLA18zy0BBbSQV+zp3ys/w
gktBEMfUtLKfG9WAC0csMvPZwKs+xFo5eepvlFihXHnClqdVhvQFG5uidIEub0CPTGOgXOR03isv
fwD9ozDlmhj7ljmVGCJdedX3uQTqC8YQI9KwtDjlfoe2poGpSpHPUwm2B3I+0U11nHJil4gvhuKY
/HLnlTyJOo+0u3y+SHOgsivjaFKdh4dERuQIIfK6mOkvnjokGYMNcT1YskU4RqbX7bIWwtYHQaFT
8jeKSQIdMm78/Ptz/VyetZRkEo4QlFRJcJWIiahyvrhJuTMZL2GOJ0PKGY3ZdRyQbGuPmN+Lb8Cu
Aj2CQ7uTf7pDz6GSZ/ZjEgq0axZRvRqer1ec38R9q7FFoJH81IDA8qQc6KgMvyBKLJFa49v67new
MdSA7NtZuxUbtwfi07W6h9dPHqHIxNgLhKyjc03P8Zx/s9JErn8vzc/jvTJmJaIsOisvMduRK88c
oxPiTgHSgVZktxnY9ldsRMTa3+H8ttcwpOlLAmNhVX5R2/UQtiBLH5jSLa3vYaF1d2nWhPOMN3Jq
LN2wgR6JrhSgO7Kxlnf5yDoqwm58AlVdf6lAFSQ7A0bKsi15KgUHpNxSpjLY9JgPjpelvBAV37lN
P9N1mKiXPWa9ef8CeBOB549I/xqhSnkro72yW3lb4il4jRVlJtn+1Fkee6QQ1TVI9n1vDjbeGcyY
8WzyVx5vHDYNlIlN2PARRDH3ye2AQ4fMpX25bbCoHA0xePrVtnzSnCeWNES9WHYeBGjePBLiJLCp
y31MUC22xDK9tyAm/faFgERjUC1iYfwLOcVf2lPw2cRpIKGNwPX71ldpxDg1xART21Oy3Ers9svT
ahQV99q1SImjGHPKbK3jatQ2kRUrxGIFOUFkUuFh01mCZBqxOazBa3/H5LANSS/u4WMdBnAvGwEI
CDXnOCHxDz+OmHK+tFhA0Leaz7SrWxGAeN3nq9BXQPXUhHQwXXRinojKqE/lQfDJ7zVMQc7WHDUc
77/7lrLxoioBDhbOyT8Qbj3zqCISvroV+hTInOSt11+iKhU1unljzIwCS1HVi35OPFIrXFan97Ax
NXcNds5zGmW1+IJfqO1usWUxomrSjsqbnkIymBIrtcplEaIlxqT8Mr08hiP80i8AFRwWoyWv7Zf2
b9aGGdu092YLFEN/WSfYA6K2EPYZaBmLDA2hqrOsyCEbmoiTkZ1iM/0jT9xQ9C/kcBIzoKZjpAhx
jZjw8C+KVw28UiCvJKR2feeqWaupMJG4IQMlul49d1oj50RS3nzuyv3lesgQmzSbMlpxL5dYv/Pk
GaQuLV8fwBM7HxH2rNI7lNZhizn1IoO+YhbdQB/g4TfB17eFwkgqNGeFmDx12lLw32s+sEzMBczx
+qlaCS8KS7Jq4ybHkyyBSFZmC2m/S7Ykgjn4jzHy3Tq+3WhcGSZpAQ+fHPJoIJ3eJ9uwCdjVBpt5
EznIPx0mrgHtWH7r+NawJ3NIW3AaS9zKRaVFEP/NXv/bE/CzLpYkE6fYMLWITnub8GtOriOZY8nG
yP++Anv2HxKKv+3yPMIUJ/jJGuHclb+U7Iu1AVP9o+az50V0tqiybvIV8H9Moyk5eMpcWZ0POSRT
+nxeOXMtHTbFffNj/jW17Fu99ka0RMY+nvq/eMdxH0g6H2rBSG8GBUImZVOUQkOfzxLZ6KuNexuT
BqG6K4xAJWHMnmwce8L+oMGijv4oItZCVoR/kUnDzEJ7bCljm0dU0oIh9esmjYOPrhgyXdsS267a
36F8i3jelBFDEypf1+bDU3wtOScL/8HFldeRtKOWKxhvMHSYe6yDx0hKpe0MizaZe5cWPBi7lRrx
XpgPnNyJSQNLBRXGN064WpE8p0dbnyBzJ/golM9Zhk+NPsCPYYRgAkop4gzqeo0HRJipQpF0PdW6
zHXGD1vZ76iW6H5Vi1kNgvHJtAs3NR1LK4y5Wd2ZQOVuFt3YilEB3Zl4nwhfX2QE2jcWQndw+nRy
Fds9kfdqY7Vs5gaPdo0e/YW6G5nll2waUjUqcOkGQcsF+Nbo2ErORj0GDlSGsfoQHGFqJ0GDvUEo
gpctT3qgk6OjUvX+CgqkEHl+3ikW2v7iCqBRluAs1yfUyx8lyrNSllH8GQKcGIUvLlU1pFA6C8Jq
4aIRnfU4YrJAz1P9uj5TNmmbTmUbg9c523gWi89y3RWCeNf6eQUjIqStN6pxFxCwaq1yhigDKsWm
EPEpYBHxALwoFlF/o3kYZ5rcNIWk13s2dW3GrYTnOxeku8YVE+9WPYyhWC0caS3qwMEg8vDxe7dF
2Erm50BZiD0DA1vyClHfMgUctC7yOdCY7XFhXvSyCFh+Qo4jJL477HQK7tEzUtT9eb13Q/zx+sPx
EcDjiflvMdvSHQZxzESrrMcze7F1xVQgqMxPp5fQiZTgvXbH9QZIEN5HAgfODudQVUfqfJhHWDkH
TGF0dvj/wrHLAVH9BDXuVYghp/9jCm00wEE/gZ7QAl/6M19dcZtI1UAkxGwRDYrn7pvgSX6QVuFn
WqEuJmdsnayCtUWQlA5Jj6l7cRgr3u3Kis/Em0j/MemcdWZGkh65JskbvKFTF4r8aGY6DVC+nI3r
UaynFuBTBjtgFVl/3G07Cpf0pj0HbJsree3ZDb8ZXxcA/JW7lUEciLjVq6TQKS5aqqOCiEAEw9oZ
R9sdqYr6QeZdLfB1mJuqWGQXyd0V4F5xoV1Ln6H7W2K0n5n6hOzqw+UliRaEOiH0r/uJ7g3Ncd/z
ka02Mdl9hT/s+oYznkOcr4NHms3WMUHkSgrSVgvH0Kt05iN/AVD8FljtdlEPD+RtJq3OqI+ACc0S
rq5r3F2D5Mpoi0ctvzJ+FXo59vnpcRZxJwgMtSxRohG8eckSodE90sHZTZ8CfZ8sroxq0/kdx5vC
zwhzQaOXuB8tRZ7psNHFi8f14wzfF25VCJ7TeL8WZY5FSEpQt9lxm6nf/p6Ug2pza37ommel9JgQ
ZdP7G60XuNqOuEUAPMtx75ATj5vYWraR8xSfeNrHm7XPP7AKb9hupUMDh7WnsjifTQSftqGil2rZ
CdY5dC6tuBhu6huqKFwPlWqJq3sONhR85MyhwlH8kfnbldGcTyD2sdOjmU+jD3WjALCu4lNZZdyw
c98fPYB+/EGCKPrC6yAhT3Jg9RpU37yKFhHtqir5hEDffWgF+YBzGXn0d5FPADT59fwUpioysfcE
QtCKzKNhyOT0MHgZUCBl9HeYV3J2Vz9UQlQcProaOLBTvUFTV8+bKJXirY5AgTCwJyZGNlVNOsuv
cDDhSkuxJ4zd6ho8NDVv0EFHsPaEb1taXW6G9S6wU1KU4S3/GHVzEpabY7t+CYdwleyTY7SlAeQQ
i3AvyRrGGY/BaDXBPZT23ikTeez2dINbwc51SKsq4VhPQI2UNMLc1BRYT4PS6fi4rvcBq60TUCzc
EHKzW11N9DN26YxsklA70UtEnPRInYMWS+dy0J7nCed+Q/82cbC4duYUXypx304Waj4UC4qJystB
guQxKU9GgosTmgl7XyUuvYvG5xl7fOLpgrc9nDkTs6JfMi4FoU5oNzU5X1saptz+/gNDjmZ0wI2O
l30w8D0f209eCdOPqmvKpKKpHGLcy4e83YYWe1Nk7m6TjHzQojnSdpJoNF/6g4+Z3Yix78XtsjDe
baYQcOt92rbG6d3Tc8yn0CXqxFFie+yAhB04lyp1Q24IZIc2szxJg0tM2KC+SWSfs4dK8/VGlWHa
Y6Q5CKRl58B+kc0eAImGvMtni4pGfdY/d+FDQbzPDDxjg5LqSoaTuNz4Gh6boaqok4n8plJNQwsR
ay1SBAMNzdh2UUJ9Z1pnKSC7dIy7/FedvGDYZFKmbOpoOYu6vLXmSTiS04YtRrCrjrWQKKXM44B9
ECF1y2nlsmUY/84VTX3iOcrMfjHp6klAjrWY2cZZgXYXfa/q7GV13Cv3TuD1TqgeyNqjGsk/Caes
GAY8d8gO/tWF58rrnxm+dzH0lWbOS+2KAdZigzBHv/+m7HpTUYXtJDa3iRcFcuvJ8+h+R1zsbcUX
B/d9DWcpfeLY55kfSrhDXHGFZUS/GxUOrHP/VzPU3YsS8dslGufK1uCaodqJ8w6tHSoNJjdlI5Vb
TooEw03uhP8nqhAYU9wpHpJoaYbbXiY/ZVvZHsGOvJ0pK7sUfKIEAQ3k5+Rhjdbru7Vas2LYkOjj
GokQemnSKY2XFrbeqwK8BEkfRmjQmzf0XDagNEdyoQozF75oayMJ4fGFxcVUc96cHbCDZ7va3oX9
WBi9i3aXpVS6alVsVRVcMdmPRg94hd8Z1IC7+N0F9x+A7QKwJIANsQ7EaGlvKMTZyb9sMzduWMWa
ueZTOY3S2oIj0e8BED1Uv01NPmnHno2Wlad05fIoFYggJf7OLBYRdKY0HVaDuIWo9JTdOlMkme8m
TNEalMA5x9YGwDxJFK8/mm72rj0md6DTU8pvbPF+c7YDgQg6FP6tWpxU6nWopeAM83IBTYSW8N60
42AUXr70lmRdtD/Nd1Td2dhubhV1XD8yeK1sVj+bQEVFlOV4E9GqFVPEy0lyS8kofrNUaasVObHH
RxCxhlPsh3skHX/hUv/vEaCnJtiIpioltZQgQFiYXgK+ocjC7pHuQJQdr6IecOzW8fgTnP0Xl6EJ
wrTyr0cbB4SHexxIHbz/LYG9tMcOkPljUznDiuMY7VShFgRn3Uh4vuhQbMZJ0xk8K4xZ2j2czBMz
Ups3DvNtjnuXNZpiF4OafFgzDzwo96ADgI+du7lcZ/VrIyNA6BksR7D2ipaJ+5yAtwwZRUaR4M7A
5OXWY0wmiK6dBYA+pvZUSIIn2Swa+PvhNmO/AUpQAHbNHu00di3esfQiB5+Wr2NTpqnZYX8fFKD2
ni8E0c0GR5ByXJRRbEcQ2IOQk+jFoqy+yxG1b7gEkn0LpdYT/zrrEmUVeyYc3H4RihYDupOs3Vom
SQ65OFAb7imjDGDWc2aGP8EA8yGyr+pGbi9tTcN98/ed3acZJNpse5c2jSl/LIju+ltpvZaYrvVB
MyGo4bEMuWTHDQvfEDsrlRQlcdF8Q81R+7aUIOCGro0ZfdF3NicKwPQ5lUElbg/wvrRkQmJAvgLG
LVpdIJfFMc0jFVoSL6gCkUcbwQwxmStMuqF0f07U3hjh1dgwvKc6zYVcFmyUScAAKk39PByMQNA0
ldb+xMalBvJ3OJjbicjV/AZqLq5NIFB+7IBMAZndROnCf4J5dvzunv9tgW98R5m/85bB9ZO+Qjh6
w1y1xWFq9Db3We0ELg2gb426qfJYyVKd4sdw4Jia9CrRFBojgCQCFVv9iSGnZbifCG8V8AGlSvrp
oRSuc6YCZd08/YB3H6N9/jWFXLTqeQhHMtYzFlySAShL0wLn65GvIXlpy53JbNe8aUEp4bfRthPO
cWF3/wGs4UhZ0XCSMla5enwBglTLU0zHaHX3g03EqDlq/XyCFddHx+zDrxjiHjlNxrzZAtTHYc+r
B5MJWiU8lNjdPu42mGVTySqiEGfZhYQdOgPQs+foWC4I9C6PYDNAd00uCxxZUEHgEZMAlbjI4ogA
fFrWWBtcSFTbtRLofGFOPoh5ouGdm5Fk37ZUCyz6tDFc22h9QMYyaIKovYsfKsv3wOQm/BHxrhG1
suJiFmfAge1EhZ996jUdia38+tgw/K7btkGiVyjcT7Q0+FhmCLcIzc1uU6yoXIVUbmQB+KFRCqn7
rtCXRFUmcUBI1Qx0F6rcPnNUOIrjTIWCdWRZbkEntOcSvPMabRV6HhaXTVmLkK9fFXa8zhuZK88y
GhlV2H57krQ8GrShvL70hFcicdtp0OCUp+qvSp+/CHRs10y9h0qtUA622+WoFMLEo8K11xD+R1pP
njLzlwiUAXFB/JN8306XJXelP9DHd9KVgkTTgNYFoFGKyEPyM+CX8z8WgXeI0siYSHOreA+jdvkI
xth5lSsaf9rg7ADJn5dQBnmr5GVj5Kj/ctUJ0zv4T4q0Brz5a8q6LN+8AZEPksm9LkJ1c7SkYVAh
11WOv4Z+/N9+aM+oWEPmP7RScmEMz+FD+5QVuKrLt8kEDyQz9J0pYFT0Sprt10kFKGM6thVdvxn+
FbHPWsB/m5cqKPJvTI06FvtNb+DtVeCsAGRmpP0mshW8buCeRp/SXidzZWJWZZZaOOQYD0gAobVY
qB1XXX8mfmVVt/ktuzc2AE8rQQBeVXvOQybZUg5+G0B5hw9YTXOUZAcBPpWllY/Wg74jyyJ52m4P
eu62YUxChpgDfaQZysvUDzwdoEUGqQu20EzQwgRmcUkfRankqZd9l1I1e57XB5WRQV6K9q9TvTnk
5CvHgcILZx5htBOeNAyk1E6DbhqdkHl/vwjxt2BegJ0LJrkK1VKnS7s2FneuZujp0YNvuII8kbmQ
i2Qg8wdPKxm4k9PQCGaIz5uxtvGthkR6C1u7yjzdnn7TGvbZzWy7FWCG4pbV/31KATAFt87rmV4Q
Q6y6dXDFyvGF0dCt07Vq+OMP0rURu7fIy6yFSsK/eIK3+KXgcCdDhmmTCFOaSHi5BvqriC0b5iJb
bv1XYckKvoargyKEy+xiZ1X6V7otCD+YfEpldeutDYeyb6qLoAZdHmoSgRDskP47RvLzOQBYv7eY
zd9yenIn8NNKdi3dpOrsebOd4HcoODdqY5F5QQkxfqFShQZmGsEzX2PxThD0aZZK9k9egzW1iqJB
krJx0mH6SDTReUQs6cz65b33YAWPK2nYFdBFKkBdeg4GOEjKCKimDwVth6W/yZzieNfqtY3cgsTA
n+SCYI1e7T8fuHTBq26qia7d2HW+UDf7LtxBMYwYlK4c+Kc+KGpDZax2KbCXrO5vFBGiNganyEoY
6Qgs903JarGIhlxxv2F0IXinsOCSKND6D2/CbkwmA+RXi8rt5gNZiXF2LxsCM7+bKD4LNKO/6DVu
Gij/M1Myog+xugEZPh/C2IDfk7CqxUb2eiVki5QG9B1aFDtvSL6D8YNPnGuW4UhTZC+O+XeAIqPq
V4xnActznEqppk2yxDAVfqOyN0J8+clSFz9XSZulljxg7WeLzGQ81W7nP2PcAE01nd3PT8o+f7Tc
DNonu4lswnUwsov321xmxpLsgM6jJk7k2AWexDGKPzRrL6vFILmouJJkWTCdwDW5IbgAinP4JFav
NMKN+9AH3048/9diILAEddTUC8ezLBpHmi4KuQczvuhRAYWBwaOqC0aXCMtZo1P8Zh3fVZfxaf3j
1Vry2yI7Zq0Q823rAaWjmuXkoAm3v7z3Re0jGpVZ0KoUcr4t+R47bj/pBFsqsSoJFwk6vJysP4ge
bXP/Yy7iiYSKgmexH6cbAVRJdPQneXgdZkwieH+eHRAWjQKiFYKQNYvbRCFfdxmVQ1U8LBg9McZD
rSNY8fm2YkNt6Px8XumKkUxdKO2d2i/Tzah4LFb3LSlX9Di5WwGS3wMZFP/uBdhYA1VOyBZ1wkn2
P71oCqpApMLFTw2rJc1E1bQ+SXn6WpQkiugBRiesl1t/7F166nND3sUSP+/Ln9ODSxjBaCOA9B9J
3V8ucKPjG+RP8h8dQKVSC00hAc7riz8afn+LQ2x09ZB3Fm1ta3KQtQCud+FhjpZBjIPm5Na8BU5Z
qdY4Sf2+WlZOoIGCXq00Uys7b4R7LIsjM0i5sFk7t8IHGp5RfFlr7hViU4UIeM4RNn6a1o+NKsNf
QjGjn9e4DCKJzm5n6OhFRVVgmUK05ZmO5HWtpHqlCW4LZ12rZfjdXOjPlIf6xHacatoJqvMpO87W
UM65dg1Mqucl+d/+uJHNPw0rNhMHYRoArVSWkyrXA9dnMxyDS0z8370Q2pfJPddHXUpu1fK3x2ho
ChMg105HiNjr8YnXWwxhFjfE1AIUABMKSliM1Rp9p+znQVYpYdLXa1gqRX6Bnqh36uIJXxF9D4FS
wxMHC5fKARV2Q31Wgg7DChxoEynFTcB2tWOemYjf/e90JLfKDR7XIETNrivGxqQ0lLMelTkYnM2+
lDhbqgd6HUh8tHHVcQQf2Px+fUXqv7JSfBuNXw8h9DNlZxfwTWw17lx6/b/krkblyV3/o3dTVvyF
l1f2T8+IF+lXm6PcDZ1UizAfxH36v5TAM1LZaSSZlz0QKNraPNDxDQS9zYB6ZQ4FDkJKGyiIgoeD
qemooU1HQ7EDTmnNFHURczLa7zcrUMRrlFvi485W+BaRSdLjvjRaLMpecR8NCabjzWz0NgXVRFI3
ccWU/SJcRnvEHQ+0UlJ2v1ftb/SVjLwGqj+ZAeQVjJ4gCqS7XW4UAsYMw8t2rEeEcOx29Nw8BGZo
j9dDOUikoi4AazVv/EBypJnY1h+MQQOjqcoimFWiYVCoCpF78qbK4/C+EoT63WMM0i1/JVGOv1dr
jFoUgZBxfF8kF9UaYqyABQuB0K9bZVg6FGgqn7MuUGAe6DrF5km6qd85ThT4LBspU4PwGSwapFIv
myfz9l8SOmUi3XXBXM98ltVNRGKFH9O0ctK4Cx9Swqv2ZvpFzHx7/cVhJIctDtivcGkvcvYPLn4t
aYV5tmj/1f6kfYOB9gsR9GrC7lfey1JXtAupzZiTDNOr1GLJuivz9EeTr9eAUfPgvUlr+FZWfCBF
YSUJgefiFuXj0OQp48QsObJ7/0Wq4xTgrwDqKJqZVajPK4RrXfPopAzf/0ZafRLdhYox0/IsWzDc
NhpcVAkznNa27c9Ya6DILBtlusp3Bo28TbyKCMgi7ADPACnyDyIRiBcGFtohBE8Zy92EyLJL+lJ+
lEgeGuoPpaWHSlDjoy4FFG9cToMP0vasR9CEK1TgbpoBtA0rCsU7pHQkQsnhD9o8xhfTQX2qrVez
vvOlVtPK2SStTghCQdZsCC3hoGWogm/SQtw61wkHDyYSH53hQvEDvWSQUnpYhNmlEgkFUpThR6pa
rQcblL8b6xzef5zfpjY/SSvdFlRfJI33JxaCUYHm1lPfOjSIxqCTtnRI90Sx/vkRg4LH8UOqv/la
kBgLqHHF0BNbWdKZWS0qeQtxnBaXmaw6jPjCRrM+ZPjvoGq60VozVTo7P8QMubEyWjrpFSxKSbnC
qDI0/x22GQpr6VXbUkV7pORQLed27yU4uazzS6Vg088qr8Nn6jJZbZoKGtgWGw1o1dH131w5wolm
gNPtwUoxBN7LtqGTOKCddvt5VFgW1S/mqE5pbG55s3gPjRZ5UDVkaGaQqLhGpvtsUvae3Tpqx3N7
ALhjuDdBdcLby9PwhBTszguzWMaPcIYl2T8pQh5lHFx85juzCBAzCXaFEc8Y1A72XCRhSxlWPQyD
VJ2JvMTbuvlamKeEDjH7ojr2I1/oNxx+9az3MLwH3RBd2Eszv65JlUHPgBdxh7aht8xfzEzBKTWY
zd9Pjx1ujd3tIEfC6IVpcanmBCnbA2yJis/1PKm3IfSU2gwVDEYwHAiU113P8u63OE1VoD0w/Wuc
v4Tk/CHW1ZViKg7FysdK58Nf5aR3lGNSOaWX8KGHbSLcbZK0LiIxAsAttKMspv1iOwy6cgGQBLg+
PjiWLA+cxKhSeU/8Lssvqt2RV5NlFi/xS84CBsPVg2FRrlwGaQ7CdAWFZcadKeqd6p+KLBP+RA55
vSjTDOOtFOCq3i0qr3dgG78wbx3eyAaD87V1lCaVNXEwbGYBcgXB7W2q9l+K1EBL8upTtB4VjZuS
abmnLG+RooKZgVbn7Lq5wQnt3tcX6Fy5BYD+3DmZcRjy3m1T3WWa/p7UVOOHMpLYatA6i8Txx74h
2t/UzaS2jgY3vWFR4iyMunUBU+vEfIKm2b3GXBJAWlGR0evKW9tJy8BiMkzLMYk2SefQWUuDbR2B
haGjEYSiWXAAnLDvlgESwUoyOrHz5ozX0+ZVQ5zynrM0LNxSLOZ7Adj/7LaO9XcL53vEagUmkELf
3NKkQnSXbY6lXBdfj5tBNI6QtPvTl7631j/vYMC2a7tbQrpby4WREugviYMSHiDH4MSy7SGeQH5J
p8EZg7ZaA8mvdiwlYuHOyoofTiGJCqAARNn0iD4uzf1sroi6QncMaasANchutfVNMmtCxW8Hx1Yp
KdoYRw260+EpqljPta5dTN0D/jwmhjQ83Iw6M8G6H/K3wyUlyQ74xtPZUwYJ0UDMO2W1k+if8Dd0
jJrtHUjsLYcZABbt2BbakaOggP+tZHhBujxof0QlZXMMa+ru6zeaaiBN4uXJHtZAOWyuy7HpV/DJ
0NU7sjPRCMFagFkPvSeDzYTCfM0QRM24CI27PTdYKhcvUx5kQqS3tXnFRJYGb7xVwH64G/cvw0tP
gY1x9PoAtB8jafs5Q2J4VkjddYTgJ6rMb0ThoFoWrILssZv23WuGqh39m7ku94z8KrROEMcmkdGw
yqN6jn5fglPiCJaZjjGXJUUJwvBiGz4c3KLirfAiC0z5N815sqHlHYp4R/+czFWyTmjr4hfOsvSX
9FWD0Wifi5ks7LgOaxEifeI4PZH7ZOl+B3W1ZADrQh/0/CHjlpybD8LWCdI3uHKQPWm3kK7rdP6C
XvvWMeFeH/IOuGE6F6p7X1mIj3YdZv4yUO9v+pgBm0KoqGWn8VMCoQMLHRS6cmrxZTw/XWdkYeub
1okH0Abr951EPyxkhH5z4YBmFM2FLGPyhFEcSBR1LzNsL7iJbjHr2JBeBla7WwWBM/LE2Sd8i03G
ZFL4/G8DD2t21u7ybxaN4174ekcDcDN0ozTNs2/VgiV9Fzhwl644G5jGm+gqh7etFwx/eiPRzrEw
z3C1Rt2GiC5PRN0ln3QUZOejRmXEhjsjpyxAQP9BmMFOd1cHu5QPHD44Gg+ZOEF0xOzplS6a/JyF
1O2bofpg9bqD0SfiDFZOOD4ww/ZYKVSovJXw+0FzZWTzLwYWav64Gq0hODHJ6jtFqFawjCVZddh4
4lPFe7KqrGQgQoeGHH6bmP/k5as4OXJreBGF2F4hORcUs4RJzn9YPlI5xitPy+BnjqrQFRI7fsxj
Eh/m/w7o9CZyRoJKRrMIKtG+NsAXsADeSkX97bx/0SyYJYqauQKwG5BpLwwUOGQ90nvcuG3yRKal
vnKaKxKxNXblDYKBFb2WdkhbqNxvA6d6Waaob8FodLtA+m38WyWFNdckag0QYOGLisvCQXolHR0X
etK6qHzUSS83jpyAuDMofRTLPN9KlrkaRqC0o8HJ7xMyAMYqYVv8Iz83seS6TRUliagheINFC5li
1nv7JvpKa9JLAGZ7OTP602fya0hjFd8n3lOZ2Vg5QHjJpDEGhrtJcGvMQi5N5cXS8srhwD/PCJjn
hYM3F2Ot+T0jbDstqy4tuVDKThJ4OOEirDDm1rgv6ftzyBucoLZD4WJsvWP5/vDVgb+ui//hs/uj
8Bw9qWB1hTbkzNSPTotOrjbo4o5BG3jyU7EtHdHoUB7e0pRPDIdr0Az8OxbTa8hvWOuF3/LvjGe2
wfpXQxiVAXGVrtoITzG/35Pq0PuoMCiHa+EHAln9jzs4Z87asKQBuu1BgSYmwdrcxXQWsVuMJCYy
K84+mucFUel/CNCKUsePHJgo+hAYjR8IFy1LFgeHKr+78uJY/XjAdXEkmpvkp0azPrk6dQ7oNVT/
4GETx0EbYg64fmQ3LAT1uJ6UZRguyqymn+t6mk4I5Kj9WiVIFLrzPupRpoiKA6O8FcYKqbZ42GVN
KCzYnhhv9SIVYrp8mp3MCkkRtbzztppRFsoXHeneRN3gyT5eOvnzlV02fKfceMFlogLWcQk7Gf8f
hxco9vyLP2WF/olQb9UjqUSWZxs8QQWh+HmRNj4TOMqObL9vVAAkE+Fp2osrMjF/IP6u/CHhC+DP
wntf1Ux84vHgNln3gP4bfGS7D9xvoByeJG7Kd/c/A0S9umCm2ATGAFYMNOE7gepJTdNIR8sx55rN
Rpn1qXuEWr6Ops1qa17VCg6r8ijVRH0biA6GQrZvzgXqLaq6EmVzAh9Uo6ExJxhVM8cnF3piAjak
E9rwEtZyRXaA6yIabfPVPgSUVZ2lGAnogWLTHlS2njrPk9M/VJbo4bJwSCIOikab29D/Slv1elIP
s+LmeDkw92TteIkEDozAOIrNGFv7NLgEFQLVaMFEdOuKhbIJJbacBSog0sk3Vq8dep1WTfSZ2u9X
lsxROiH1AMtVdOQa6hcml1pwzubNs2A41FipDWVKHph44KWdK2/g+pWq/iOu+mPcLG1HrjZqK/E4
fPRZHT1ARDHpVm8gZDdCK8SD8+uug0Sl/mTA0oqLtqcCJatPsVEvqDiQllvgDfCzOVKTtFzdJt4p
kdjN+uGo4wEMbRpx6DxttfuIoupreNhhq0L1Yn8ipzftuhTLiFRGknkgyPkXCIekq1sxqi5YkMG3
8rBnAmgl7uqL7+IeP+LdRMEYpaEE4+VK/f2HKHw0B9E+1C3QIJ6pVKtpaSU2ZpC1xtoEYOc1ow1V
AMtQ+oav38Jn6ccOhcpSnfEIDv0XOLfPegFOB5uA/mJWbxqXoH/CSRdNcPzxMd3lpfxUVZjyCxFm
znyoVaMOhjvyKZSsgYgscG+Rg54GyP24YiHHuAAIRraSzHfskbrH46uDlEFRg2RptJxFqsjLCG42
kZ4DOyHas/26qdapHLll5NX3SjnNhl2yNdYNxphb7NEF0QTK3fDO4Xrk/o8RcUVJqXoYZw+8aiF5
zIB3PtuAVB9QIbLA7p+7i6ntDC4HeLl4jfJuIL5fLB1n1QxFf808BhklQ04h7OuY0vSs5+1FyF+H
Y8pYNglQ8Z3PXhuJSDEQ0g+cw9QgTZ1OVORAXBZNDzLLM4fPnsvITc154ZXxJ+mvklwU7xcNPRGX
Nw0mHwtTyo83v7W4no+ffUQiipbXpWHqvb6aQdoSyp0Rbvq61gTE7Sfvn5HbsfaJpk6VDGmlOOp3
LOG0YK1jsLVXek6yDps/wkVBsT8KG7Xz3VL7nob5fdb8AvuUiPKjV/X1QufFDfkkL/R/gfraX8vC
IGPMI5M6hCy0XVab1c1LJHvVnnSRKa/uzQxM/rQNc1FQh2MKpBtSuA/ozhjBw37RUeKVIuBfU8+w
9cHOYh60A4zVyC4OXX7d3fB3nXR6N11IXi/ghFsb0qY+dxj4ZOzLaPLD6E1wV+tIuoNPw0KsnflM
sbyQPapHoscYwjUwkYkK8WsMe3JLTA7KlohWVSRe3s/3JoRmHIrkrTQPbrcMkdsclEcTk6vlrPon
zVcIvIf30bPfVJa7FBcBAmb+5AmbB//EQxnDeMvDT/0Kdxcb3P1MdKDqSV+yCAkCJG/1YDyZX4Mx
2f6KcOgh7aHCE753OJY2RF/JDV1RxkoC7XmPRgQjE5So7fDhSH7mn27Nls6MAZVgp4EC27s5Ra8s
XrZGCsjcI6afkb3YvgSxDvL1Yhl/igDIGaJHY7DPiClN6f9S2jNogpY4OWfBGQaU1JJH7p3i2ZAW
eAHG9WzJGoaLVSCrWfdTmelMTcUXhJ3d7sw+51h2PMIs2zVTQnzS4UiKhOa0Tj9yh2PDXfMZ1IVM
QZaEnpOSrvtva8mWlKnwsUNXLsWuTxkeD0dweUPqo3BOTYOIIPFJ2Ay76s3/ysz2FX1JVuByRY5K
Xff6n76W7XzG4oGDfp3GLecTj1+kym7w4cUF/ff7uT/kRIFMb5Ac/QVm3T8yicMTnwowFK3Eprph
mNVtORFFdHhOviXjkfzDJGxso8nnJ59J6XdzoXyIJ/TYUrn+X52dQZp9ssTA6Gro4LLQVB6G+B+s
jqRx+D4KwHwW7FusWMMIVkGINMeMRptnzvpap8vEfVMfIg63/rMD5p/1QO2nRCQ0U/2tfqPcYtNs
xFSSZZmpfCxYsTi8GFIA2PdK1wcsSka1IhT1lJ6W91gX2ymCDGbjnn7AC9dz1h2SOqJkLjYaw37N
BnBFZh3hXOtKa0SgTL0bEb1zRgWKVfPVQ8MXj7ZzgaHOqO1m6fcHgt0DFpHf7PoW2b9hFQX5Abw7
LSm0qD6aREJ4rxAhhzuC0pqarG1pBn+i1PdSMa+PiqDBdUu2Wl7nPQH3hyOVe2peKXoqe6TEPoH/
Rm/wGc4wVSzdyx7GKo6EhtN13w57P1rOdEv07yeZGeLATbxoEQOnujkxxgKwT5GPvwuzu48hdYl7
5FnvbrD3W+3/MIVeGQSPRCNCbEUDz57KQymGRbPIifwxBcxKZQnLPLaOsxCNmlJ2BT0fOIXtZirq
pZuuYPU7HV5pA50oigE6vov2oyDtMSziOVx4bGW7FnQumQqdfizKXU9LUwDab8ih51IXf317vmEx
Frw3/bml8/ofziKRk3N/gqMAGwBMyFp/6+LyFWXqBhzndKZU/MmZLUo5S/+hSyKVdFImWqXZocVd
7j0z9u/WLhSDbn58ho4IJJMWw3lZ/YTE6+KsaaAy8EciaHLjTK5pBZFG9Itak+phohpwu24yoAs9
6PF7IIFKcqQAj3YgzWzYdxgR/f4pDY8nZZ2y+Xb/sYO1GcnYta6Aq5BhV3tLERTZkyXa+RfWtwuc
gzV+hZOk4AjZ2L+m+rmM5vZJEqXh2TL4CIpdwZ16EicHAY8G2MSPAvSGduKoNajl5LDG6x3qA+tW
LOjHkMWXCC2mKmZ/3AMGVQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
