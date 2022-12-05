// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_backproj (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        strm_in_V_dout,
        strm_in_V_empty_n,
        strm_in_V_read,
        strm_out_V_din,
        strm_out_V_full_n,
        strm_out_V_write
);

parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 6'b10;
parameter    ap_ST_pp0_stg1_fsm_2 = 6'b100;
parameter    ap_ST_pp0_stg2_fsm_3 = 6'b1000;
parameter    ap_ST_pp0_stg3_fsm_4 = 6'b10000;
parameter    ap_ST_st15_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv20_0 = 20'b00000000000000000000;
parameter    ap_const_lv17_0 = 17'b00000000000000000;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv20_BF680 = 20'b10111111011010000000;
parameter    ap_const_lv20_1 = 20'b1;
parameter    ap_const_lv17_13240 = 17'b10011001001000000;
parameter    ap_const_lv10_310 = 10'b1100010000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv17_1 = 17'b1;
parameter    ap_const_lv10_30F = 10'b1100001111;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv32_5 = 32'b101;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] strm_in_V_dout;
input   strm_in_V_empty_n;
output   strm_in_V_read;
output  [31:0] strm_out_V_din;
input   strm_out_V_full_n;
output   strm_out_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg strm_in_V_read;
reg strm_out_V_write;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_23;
reg    strm_in_V_blk_n;
reg    ap_sig_cseq_ST_pp0_stg1_fsm_2;
reg    ap_sig_42;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1;
reg    ap_reg_ppiten_pp0_it2;
reg   [0:0] exitcond_flatten2_reg_320;
reg   [0:0] tmp_mid2_reg_338;
reg    ap_sig_cseq_ST_pp0_stg2_fsm_3;
reg    ap_sig_64;
reg    strm_out_V_blk_n;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_75;
reg    ap_reg_ppiten_pp0_it3;
reg   [0:0] tmp_4_reg_367;
reg   [0:0] ap_reg_ppstg_tmp_4_reg_367_pp0_iter2;
reg   [19:0] indvar_flatten2_reg_112;
reg   [16:0] indvar_flatten_reg_123;
reg   [6:0] j_reg_134;
reg   [31:0] p_03_2_reg_145;
reg   [9:0] k_reg_157;
wire   [0:0] exitcond_flatten2_fu_177_p2;
reg    ap_sig_98;
reg   [0:0] ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter1;
reg   [0:0] ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter2;
wire   [19:0] indvar_flatten_next2_fu_183_p2;
reg   [19:0] indvar_flatten_next2_reg_324;
wire   [9:0] k_mid2_fu_245_p3;
reg   [9:0] k_mid2_reg_329;
wire   [0:0] tmp_mid2_fu_259_p3;
wire   [6:0] j_mid2_fu_267_p3;
reg   [6:0] j_mid2_reg_342;
wire   [16:0] indvar_flatten_next_fu_281_p3;
reg   [16:0] indvar_flatten_next_reg_347;
wire   [0:0] tmp_1_fu_293_p2;
reg   [0:0] tmp_1_reg_352;
reg    ap_sig_126;
reg   [0:0] ap_reg_ppstg_tmp_1_reg_352_pp0_iter1;
reg   [31:0] tmp_74_reg_362;
wire   [0:0] tmp_4_fu_302_p2;
reg   [0:0] ap_reg_ppstg_tmp_4_reg_367_pp0_iter1;
wire   [9:0] k_2_fu_307_p2;
reg   [9:0] k_2_reg_371;
wire   [31:0] A_q0;
reg    ap_sig_cseq_ST_pp0_stg3_fsm_4;
reg    ap_sig_151;
wire   [31:0] grp_fu_172_p2;
reg   [31:0] tmp_3_reg_381;
wire   [31:0] grp_fu_168_p2;
reg   [31:0] result_reg_391;
reg   [9:0] A_address0;
reg    A_ce0;
reg    A_we0;
reg   [19:0] indvar_flatten2_phi_fu_116_p4;
reg   [16:0] indvar_flatten_phi_fu_127_p4;
reg   [6:0] j_phi_fu_138_p4;
reg   [31:0] p_03_2_phi_fu_149_p4;
reg   [9:0] k_phi_fu_161_p4;
wire   [63:0] tmp_s_fu_289_p1;
wire   [63:0] tmp_2_fu_298_p1;
reg    ap_sig_205;
wire   [31:0] grp_fu_168_p0;
wire   [0:0] exitcond_flatten_fu_189_p2;
wire   [0:0] tmp31_fu_203_p2;
wire   [0:0] exitcond_fu_221_p2;
wire   [0:0] not_exitcond_flatten_fu_215_p2;
wire   [6:0] j_mid_fu_195_p3;
wire   [0:0] exitcond_mid_fu_227_p2;
wire   [0:0] tmp_17_fu_239_p2;
wire   [6:0] j_2_fu_233_p2;
wire   [0:0] tmp_mid1_fu_253_p2;
wire   [0:0] tmp_mid_fu_209_p2;
wire   [16:0] indvar_flatten_op_fu_275_p2;
reg    grp_fu_168_ce;
reg    grp_fu_172_ce;
reg    ap_sig_cseq_ST_st15_fsm_5;
reg    ap_sig_329;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
#0 ap_reg_ppiten_pp0_it0 = 1'b0;
#0 ap_reg_ppiten_pp0_it1 = 1'b0;
#0 ap_reg_ppiten_pp0_it2 = 1'b0;
#0 ap_reg_ppiten_pp0_it3 = 1'b0;
end

dut_backproj_A #(
    .DataWidth( 32 ),
    .AddressRange( 784 ),
    .AddressWidth( 10 ))
A_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(A_address0),
    .ce0(A_ce0),
    .we0(A_we0),
    .d0(strm_in_V_dout),
    .q0(A_q0)
);

dut_fadd_32ns_32ns_32_5_full_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fadd_32ns_32ns_32_5_full_dsp_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_168_p0),
    .din1(tmp_3_reg_381),
    .ce(grp_fu_168_ce),
    .dout(grp_fu_168_p2)
);

dut_fmul_32ns_32ns_32_4_max_dsp #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_fmul_32ns_32ns_32_4_max_dsp_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(A_q0),
    .din1(tmp_74_reg_362),
    .ce(grp_fu_172_ce),
    .dout(grp_fu_172_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & ~(1'b0 == exitcond_flatten2_fu_177_p2))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b0;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
            ap_reg_ppiten_pp0_it0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= 1'b0;
    end else begin
        if (((exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b1;
        end else if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & ~(exitcond_flatten2_reg_320 == 1'b0)))) begin
            ap_reg_ppiten_pp0_it1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= 1'b0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4)) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
            ap_reg_ppiten_pp0_it3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98))) begin
        indvar_flatten2_reg_112 <= indvar_flatten_next2_reg_324;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        indvar_flatten2_reg_112 <= ap_const_lv20_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98))) begin
        indvar_flatten_reg_123 <= indvar_flatten_next_reg_347;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        indvar_flatten_reg_123 <= ap_const_lv17_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98))) begin
        j_reg_134 <= j_mid2_reg_342;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        j_reg_134 <= ap_const_lv7_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98))) begin
        k_reg_157 <= k_2_reg_371;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        k_reg_157 <= ap_const_lv10_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & (1'b0 == ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter2))) begin
        p_03_2_reg_145 <= grp_fu_168_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        p_03_2_reg_145 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98))) begin
        ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter1 <= exitcond_flatten2_reg_320;
        ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter2 <= ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter1;
        exitcond_flatten2_reg_320 <= exitcond_flatten2_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126))) begin
        ap_reg_ppstg_tmp_1_reg_352_pp0_iter1 <= tmp_1_reg_352;
        ap_reg_ppstg_tmp_4_reg_367_pp0_iter1 <= tmp_4_reg_367;
        ap_reg_ppstg_tmp_4_reg_367_pp0_iter2 <= ap_reg_ppstg_tmp_4_reg_367_pp0_iter1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98))) begin
        indvar_flatten_next2_reg_324 <= indvar_flatten_next2_fu_183_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & (1'b0 == exitcond_flatten2_fu_177_p2))) begin
        indvar_flatten_next_reg_347 <= indvar_flatten_next_fu_281_p3;
        j_mid2_reg_342 <= j_mid2_fu_267_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126))) begin
        k_2_reg_371 <= k_2_fu_307_p2;
        tmp_74_reg_362 <= strm_in_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & (1'b0 == exitcond_flatten2_fu_177_p2))) begin
        k_mid2_reg_329 <= k_mid2_fu_245_p3;
        tmp_mid2_reg_338 <= tmp_mid2_fu_259_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & (1'b0 == ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter2))) begin
        result_reg_391 <= grp_fu_168_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126))) begin
        tmp_1_reg_352 <= tmp_1_fu_293_p2;
        tmp_4_reg_367 <= tmp_4_fu_302_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126) & (1'b0 == ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter1))) begin
        tmp_3_reg_381 <= grp_fu_172_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_reg_ppiten_pp0_it0)) begin
        if ((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_2)) begin
            A_address0 = tmp_s_fu_289_p1;
        end else if ((1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)) begin
            A_address0 = tmp_2_fu_298_p1;
        end else begin
            A_address0 = 'bx;
        end
    end else begin
        A_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_reg_ppiten_pp0_it0) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_205)))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten2_reg_320 == 1'b0) & ~(1'b0 == tmp_mid2_reg_338) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_205))) begin
        A_we0 = 1'b1;
    end else begin
        A_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st15_fsm_5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_75) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_42) begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_64) begin
        ap_sig_cseq_ST_pp0_stg2_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg2_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_151) begin
        ap_sig_cseq_ST_pp0_stg3_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_pp0_stg3_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_329) begin
        ap_sig_cseq_ST_st15_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126)) | (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) | ((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_205)))) begin
        grp_fu_168_ce = 1'b1;
    end else begin
        grp_fu_168_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126)) | (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) | ((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_205)))) begin
        grp_fu_172_ce = 1'b1;
    end else begin
        grp_fu_172_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        indvar_flatten2_phi_fu_116_p4 = indvar_flatten_next2_reg_324;
    end else begin
        indvar_flatten2_phi_fu_116_p4 = indvar_flatten2_reg_112;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        indvar_flatten_phi_fu_127_p4 = indvar_flatten_next_reg_347;
    end else begin
        indvar_flatten_phi_fu_127_p4 = indvar_flatten_reg_123;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        j_phi_fu_138_p4 = j_mid2_reg_342;
    end else begin
        j_phi_fu_138_p4 = j_reg_134;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1))) begin
        k_phi_fu_161_p4 = k_2_reg_371;
    end else begin
        k_phi_fu_161_p4 = k_reg_157;
    end
end

always @ (*) begin
    if (((1'b1 == ap_reg_ppiten_pp0_it2) & (1'b1 == ap_sig_cseq_ST_pp0_stg3_fsm_4) & (1'b0 == ap_reg_ppstg_exitcond_flatten2_reg_320_pp0_iter2))) begin
        p_03_2_phi_fu_149_p4 = grp_fu_168_p2;
    end else begin
        p_03_2_phi_fu_149_p4 = p_03_2_reg_145;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten2_reg_320 == 1'b0) & ~(1'b0 == tmp_mid2_reg_338)) | ((1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3)))) begin
        strm_in_V_blk_n = strm_in_V_empty_n;
    end else begin
        strm_in_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten2_reg_320 == 1'b0) & (1'b1 == ap_sig_cseq_ST_pp0_stg2_fsm_3) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126)) | ((1'b1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (1'b1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten2_reg_320 == 1'b0) & ~(1'b0 == tmp_mid2_reg_338) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_205)))) begin
        strm_in_V_read = 1'b1;
    end else begin
        strm_in_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it3) & ~(1'b0 == ap_reg_ppstg_tmp_4_reg_367_pp0_iter2))) begin
        strm_out_V_blk_n = strm_out_V_full_n;
    end else begin
        strm_out_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it3) & ~(1'b0 == ap_reg_ppstg_tmp_4_reg_367_pp0_iter2) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98))) begin
        strm_out_V_write = 1'b1;
    end else begin
        strm_out_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : begin
            if ((~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & ~((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it3) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & ~(1'b1 == ap_reg_ppiten_pp0_it2)) & ~((1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & ~(1'b0 == exitcond_flatten2_fu_177_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_2;
            end else if ((((1'b1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (1'b1 == ap_reg_ppiten_pp0_it3) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & ~(1'b1 == ap_reg_ppiten_pp0_it2)) | ((1'b1 == ap_reg_ppiten_pp0_it0) & ~((1'b1 == ap_reg_ppiten_pp0_it3) & ap_sig_98) & ~(1'b0 == exitcond_flatten2_fu_177_p2) & ~(1'b1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st15_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end
        end
        ap_ST_pp0_stg1_fsm_2 : begin
            if (~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_205)) begin
                ap_NS_fsm = ap_ST_pp0_stg2_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_2;
            end
        end
        ap_ST_pp0_stg2_fsm_3 : begin
            if (~((1'b1 == ap_reg_ppiten_pp0_it0) & ap_sig_126)) begin
                ap_NS_fsm = ap_ST_pp0_stg3_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg2_fsm_3;
            end
        end
        ap_ST_pp0_stg3_fsm_4 : begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
        end
        ap_ST_st15_fsm_5 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_126 = ((exitcond_flatten2_reg_320 == 1'b0) & (strm_in_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_151 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_205 = ((exitcond_flatten2_reg_320 == 1'b0) & ~(1'b0 == tmp_mid2_reg_338) & (strm_in_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_23 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_329 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_42 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_64 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_75 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_98 = (~(1'b0 == ap_reg_ppstg_tmp_4_reg_367_pp0_iter2) & (strm_out_V_full_n == 1'b0));
end

assign exitcond_flatten2_fu_177_p2 = ((indvar_flatten2_phi_fu_116_p4 == ap_const_lv20_BF680) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_189_p2 = ((indvar_flatten_phi_fu_127_p4 == ap_const_lv17_13240) ? 1'b1 : 1'b0);

assign exitcond_fu_221_p2 = ((k_phi_fu_161_p4 == ap_const_lv10_310) ? 1'b1 : 1'b0);

assign exitcond_mid_fu_227_p2 = (exitcond_fu_221_p2 & not_exitcond_flatten_fu_215_p2);

assign grp_fu_168_p0 = ((ap_reg_ppstg_tmp_1_reg_352_pp0_iter1[0:0] === 1'b1) ? ap_const_lv32_0 : p_03_2_phi_fu_149_p4);

assign indvar_flatten_next2_fu_183_p2 = (indvar_flatten2_phi_fu_116_p4 + ap_const_lv20_1);

assign indvar_flatten_next_fu_281_p3 = ((exitcond_flatten_fu_189_p2[0:0] === 1'b1) ? ap_const_lv17_1 : indvar_flatten_op_fu_275_p2);

assign indvar_flatten_op_fu_275_p2 = (indvar_flatten_phi_fu_127_p4 + ap_const_lv17_1);

assign j_2_fu_233_p2 = (j_mid_fu_195_p3 + ap_const_lv7_1);

assign j_mid2_fu_267_p3 = ((exitcond_mid_fu_227_p2[0:0] === 1'b1) ? j_2_fu_233_p2 : j_mid_fu_195_p3);

assign j_mid_fu_195_p3 = ((exitcond_flatten_fu_189_p2[0:0] === 1'b1) ? ap_const_lv7_0 : j_phi_fu_138_p4);

assign k_2_fu_307_p2 = (k_mid2_reg_329 + ap_const_lv10_1);

assign k_mid2_fu_245_p3 = ((tmp_17_fu_239_p2[0:0] === 1'b1) ? ap_const_lv10_0 : k_phi_fu_161_p4);

assign not_exitcond_flatten_fu_215_p2 = (exitcond_flatten_fu_189_p2 ^ 1'b1);

assign strm_out_V_din = result_reg_391;

assign tmp31_fu_203_p2 = ((j_phi_fu_138_p4 == ap_const_lv7_0) ? 1'b1 : 1'b0);

assign tmp_17_fu_239_p2 = (exitcond_mid_fu_227_p2 | exitcond_flatten_fu_189_p2);

assign tmp_1_fu_293_p2 = ((k_mid2_reg_329 == ap_const_lv10_0) ? 1'b1 : 1'b0);

assign tmp_2_fu_298_p1 = k_mid2_reg_329;

assign tmp_4_fu_302_p2 = ((k_mid2_reg_329 == ap_const_lv10_30F) ? 1'b1 : 1'b0);

assign tmp_mid1_fu_253_p2 = ((j_2_fu_233_p2 == ap_const_lv7_0) ? 1'b1 : 1'b0);

assign tmp_mid2_fu_259_p3 = ((exitcond_mid_fu_227_p2[0:0] === 1'b1) ? tmp_mid1_fu_253_p2 : tmp_mid_fu_209_p2);

assign tmp_mid_fu_209_p2 = (exitcond_flatten_fu_189_p2 | tmp31_fu_203_p2);

assign tmp_s_fu_289_p1 = k_mid2_reg_329;

endmodule //dut_backproj
