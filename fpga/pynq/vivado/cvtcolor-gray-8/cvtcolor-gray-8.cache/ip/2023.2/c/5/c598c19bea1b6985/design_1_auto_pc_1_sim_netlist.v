// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Mar 20 06:34:16 2024
// Host        : KVL-TUF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_auto_pc_1_sim_netlist.v
// Design      : design_1_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_axic_fifo
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_fifo_gen inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_fifo_gen
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 fifo_gen_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_a_axi3_conv
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_axic_fifo \USE_BURSTS.cmd_queue 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi3_conv
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_a_axi3_conv \USE_WRITE.write_addr_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_w_axi3_conv \USE_WRITE.write_data_inst 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi_protocol_converter
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_w_axi3_conv
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71792)
`pragma protect data_block
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
6uLt6Xc/ntT4ZyOAvhQN9ta2GWY2tEKS6pA7whw=
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
