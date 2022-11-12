// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1ns/1ps

module dut_frsqrt_32ns_32ns_32_11_full_dsp
#(parameter
    ID         = 31,
    NUM_STAGE  = 11,
    din0_WIDTH = 32,
    din1_WIDTH = 32,
    dout_WIDTH = 32
)(
    input  wire                  clk,
    input  wire                  reset,
    input  wire                  ce,
    input  wire [din0_WIDTH-1:0] din0,
    input  wire [din1_WIDTH-1:0] din1,
    output wire [dout_WIDTH-1:0] dout
);
//------------------------Local signal-------------------
wire                  aclk;
wire                  aclken;
wire                  a_tvalid;
wire [31:0]           a_tdata;
wire                  r_tvalid;
wire [31:0]           r_tdata;
reg  [din1_WIDTH-1:0] din1_buf1;
//------------------------Instantiation------------------
dut_ap_frsqrt_9_full_dsp_32 dut_ap_frsqrt_9_full_dsp_32_u (
    .aclk                 ( aclk ),
    .aclken               ( aclken ),
    .s_axis_a_tvalid      ( a_tvalid ),
    .s_axis_a_tdata       ( a_tdata ),
    .m_axis_result_tvalid ( r_tvalid ),
    .m_axis_result_tdata  ( r_tdata )
);
//------------------------Body---------------------------
assign aclk     = clk;
assign aclken   = ce;
assign a_tvalid = 1'b1;
assign a_tdata  = din1_buf1;
assign dout     = r_tdata;

always @(posedge clk) begin
    if (ce) begin
        din1_buf1 <= din1;
    end
end

endmodule
