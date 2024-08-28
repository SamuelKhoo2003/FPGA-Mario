// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module cvtcolor_og_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        imgInput0_data_dout,
        imgInput0_data_num_data_valid,
        imgInput0_data_fifo_cap,
        imgInput0_data_empty_n,
        imgInput0_data_read,
        imgOutput0_data_din,
        imgOutput0_data_num_data_valid,
        imgOutput0_data_fifo_cap,
        imgOutput0_data_full_n,
        imgOutput0_data_write,
        empty
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] imgInput0_data_dout;
input  [2:0] imgInput0_data_num_data_valid;
input  [2:0] imgInput0_data_fifo_cap;
input   imgInput0_data_empty_n;
output   imgInput0_data_read;
output  [7:0] imgOutput0_data_din;
input  [2:0] imgOutput0_data_num_data_valid;
input  [2:0] imgOutput0_data_fifo_cap;
input   imgOutput0_data_full_n;
output   imgOutput0_data_write;
input  [15:0] empty;

reg ap_idle;
reg imgInput0_data_read;
reg imgOutput0_data_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5582_fu_89_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    imgInput0_data_blk_n;
wire    ap_block_pp0_stage0;
reg    imgOutput0_data_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [7:0] p_1_reg_187;
reg   [7:0] p_2_reg_192;
wire   [21:0] mul_ln886_fu_140_p2;
reg   [21:0] mul_ln886_reg_207;
reg   [15:0] j_fu_58;
wire   [15:0] add_ln5582_fu_95_p2;
wire    ap_loop_init;
reg   [15:0] ap_sig_allocacmp_j_load;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] p_fu_106_p1;
wire   [7:0] mul_ln886_fu_140_p0;
wire   [14:0] mul_ln886_fu_140_p1;
wire   [21:0] grp_fu_159_p3;
wire   [22:0] grp_fu_167_p3;
wire   [7:0] grp_fu_159_p0;
wire   [11:0] grp_fu_159_p1;
wire   [7:0] grp_fu_167_p0;
wire   [14:0] grp_fu_167_p1;
wire   [21:0] grp_fu_167_p2;
reg    grp_fu_159_ce;
reg    grp_fu_167_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [19:0] grp_fu_159_p00;
wire   [22:0] grp_fu_167_p00;
wire   [22:0] grp_fu_167_p20;
wire   [21:0] mul_ln886_fu_140_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 j_fu_58 = 16'd0;
#0 ap_done_reg = 1'b0;
end

cvtcolor_og_mul_8ns_15ns_22_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 22 ))
mul_8ns_15ns_22_1_1_U62(
    .din0(mul_ln886_fu_140_p0),
    .din1(mul_ln886_fu_140_p1),
    .dout(mul_ln886_fu_140_p2)
);

cvtcolor_og_mac_muladd_8ns_12ns_22ns_22_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 22 ),
    .dout_WIDTH( 22 ))
mac_muladd_8ns_12ns_22ns_22_4_1_U63(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_159_p0),
    .din1(grp_fu_159_p1),
    .din2(mul_ln886_reg_207),
    .ce(grp_fu_159_ce),
    .dout(grp_fu_159_p3)
);

cvtcolor_og_mac_muladd_8ns_15ns_22ns_23_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 22 ),
    .dout_WIDTH( 23 ))
mac_muladd_8ns_15ns_22ns_23_4_1_U64(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_167_p0),
    .din1(grp_fu_167_p1),
    .din2(grp_fu_167_p2),
    .ce(grp_fu_167_ce),
    .dout(grp_fu_167_p3)
);

cvtcolor_og_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln5582_fu_89_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_58 <= add_ln5582_fu_95_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_58 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        p_1_reg_187 <= {{imgInput0_data_dout[15:8]}};
        p_2_reg_192 <= {{imgInput0_data_dout[23:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        mul_ln886_reg_207 <= mul_ln886_fu_140_p2;
    end
end

always @ (*) begin
    if (((icmp_ln5582_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 16'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_58;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_159_ce = 1'b1;
    end else begin
        grp_fu_159_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_167_ce = 1'b1;
    end else begin
        grp_fu_167_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgInput0_data_blk_n = imgInput0_data_empty_n;
    end else begin
        imgInput0_data_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        imgInput0_data_read = 1'b1;
    end else begin
        imgInput0_data_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        imgOutput0_data_blk_n = imgOutput0_data_full_n;
    end else begin
        imgOutput0_data_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        imgOutput0_data_write = 1'b1;
    end else begin
        imgOutput0_data_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln5582_fu_95_p2 = (ap_sig_allocacmp_j_load + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_block_state6_pp0_stage0_iter5)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_block_state6_pp0_stage0_iter5)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_block_state6_pp0_stage0_iter5)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (imgInput0_data_empty_n == 1'b0);
end

always @ (*) begin
    ap_block_state6_pp0_stage0_iter5 = (imgOutput0_data_full_n == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_159_p0 = grp_fu_159_p00;

assign grp_fu_159_p00 = p_fu_106_p1;

assign grp_fu_159_p1 = 20'd3736;

assign grp_fu_167_p0 = grp_fu_167_p00;

assign grp_fu_167_p00 = p_1_reg_187;

assign grp_fu_167_p1 = 23'd19235;

assign grp_fu_167_p2 = grp_fu_167_p20;

assign grp_fu_167_p20 = grp_fu_159_p3;

assign icmp_ln5582_fu_89_p2 = ((ap_sig_allocacmp_j_load == empty) ? 1'b1 : 1'b0);

assign imgOutput0_data_din = {{grp_fu_167_p3[22:15]}};

assign mul_ln886_fu_140_p0 = mul_ln886_fu_140_p00;

assign mul_ln886_fu_140_p00 = p_2_reg_192;

assign mul_ln886_fu_140_p1 = 22'd9798;

assign p_fu_106_p1 = imgInput0_data_dout[7:0];

endmodule //cvtcolor_og_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop
