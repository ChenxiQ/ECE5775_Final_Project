// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_calc_angle_float_float_s_HH_
#define _dut_calc_angle_float_float_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_fadd_32ns_32ns_32_5_full_dsp.h"
#include "dut_faddfsub_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_fdiv_32ns_32ns_32_16.h"
#include "dut_frsqrt_32ns_32ns_32_11_full_dsp.h"

namespace ap_rtl {

struct dut_calc_angle_float_float_s : public sc_module {
    // Port declarations 7
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<32> > A_M_real;
    sc_in< sc_lv<32> > A_M_imag;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_in< sc_logic > ap_ce;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    dut_calc_angle_float_float_s(sc_module_name name);
    SC_HAS_PROCESS(dut_calc_angle_float_float_s);

    ~dut_calc_angle_float_float_s();

    sc_trace_file* mVcdFile;

    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U15;
    dut_faddfsub_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_faddfsub_32ns_32ns_32_5_full_dsp_U16;
    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U17;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U18;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U19;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U20;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U21;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U22;
    dut_fdiv_32ns_32ns_32_16<1,16,32,32,32>* dut_fdiv_32ns_32ns_32_16_U23;
    dut_fdiv_32ns_32ns_32_16<1,16,32,32,32>* dut_fdiv_32ns_32ns_32_16_U24;
    dut_frsqrt_32ns_32ns_32_11_full_dsp<1,11,32,32,32>* dut_frsqrt_32ns_32ns_32_11_full_dsp_U25;
    dut_frsqrt_32ns_32ns_32_11_full_dsp<1,11,32,32,32>* dut_frsqrt_32ns_32ns_32_11_full_dsp_U26;
    sc_signal< sc_lv<32> > tanThetaAdiv_reg_48;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter62;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter63;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter64;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter65;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter66;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter67;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter68;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter69;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter70;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter71;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter72;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter73;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter74;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter75;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter76;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter77;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter78;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter79;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaAdiv_reg_48_pp0_iter80;
    sc_signal< sc_lv<32> > grp_fu_87_p2;
    sc_signal< sc_lv<32> > reg_149;
    sc_signal< sc_lv<1> > demorgan_reg_320;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter43;
    sc_signal< sc_lv<1> > demorgan5_reg_324;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter43;
    sc_signal< sc_lv<1> > p_Result_13_reg_379;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter43;
    sc_signal< sc_lv<32> > grp_fu_128_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter59;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter59;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter59;
    sc_signal< sc_lv<1> > demorgan_fu_216_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter11;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter15;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter19;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter20;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter21;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter22;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter23;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter24;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter25;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter26;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter27;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter28;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter29;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter30;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter31;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter32;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter33;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter34;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter35;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter36;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter37;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter38;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter39;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter40;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter41;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter42;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter44;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter45;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter46;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter47;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter48;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter49;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter50;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter51;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter52;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter53;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter54;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter55;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter56;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter57;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter58;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter60;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter61;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter62;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter63;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter64;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter65;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter66;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter67;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter68;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter69;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter70;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter71;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter72;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter73;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter74;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter75;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter76;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter77;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter78;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter79;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter80;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter81;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter82;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan_reg_320_pp0_iter83;
    sc_signal< sc_lv<1> > demorgan5_fu_240_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter11;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter15;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter19;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter20;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter21;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter22;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter23;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter24;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter25;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter26;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter27;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter28;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter29;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter30;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter31;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter32;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter33;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter34;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter35;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter36;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter37;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter38;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter39;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter40;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter41;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter42;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter44;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter45;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter46;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter47;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter48;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter49;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter50;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter51;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter52;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter53;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter54;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter55;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter56;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter57;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter58;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter60;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter61;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter62;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter63;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter64;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter65;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter66;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter67;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter68;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter69;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter70;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter71;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter72;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter73;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter74;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter75;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter76;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter77;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter78;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter79;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter80;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter81;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter82;
    sc_signal< sc_lv<1> > ap_reg_ppstg_demorgan5_reg_324_pp0_iter83;
    sc_signal< sc_lv<1> > p_Result_8_reg_328;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter11;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter15;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter19;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter20;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter21;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter22;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter23;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter24;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter25;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter26;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter27;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter28;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter29;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter30;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter31;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter32;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter33;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter34;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_8_reg_328_pp0_iter35;
    sc_signal< sc_lv<1> > p_Result_11_reg_333;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter11;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter15;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter19;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter20;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter21;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter22;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter23;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter24;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter25;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter26;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter27;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter28;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter29;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter30;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter31;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter32;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter33;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter34;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter35;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter36;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter37;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter38;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter39;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter40;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter41;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter42;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter43;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter44;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter45;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter46;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter47;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter48;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter49;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter50;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter51;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter52;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter53;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter54;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter55;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter56;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter57;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter58;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter59;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter60;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter61;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter62;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter63;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter64;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter65;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter66;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter67;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter68;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter69;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter70;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter71;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter72;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter73;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter74;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter75;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter76;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter77;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter78;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter79;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter80;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter81;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_11_reg_333_pp0_iter82;
    sc_signal< sc_lv<1> > p_Result_s_reg_338;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter10;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter11;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter13;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter14;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter15;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter16;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter17;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter18;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter19;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter20;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter21;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter22;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter23;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter24;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter25;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter26;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter27;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter28;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter29;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter30;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter31;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter32;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter33;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter34;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter35;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter36;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter37;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter38;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter39;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter40;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter41;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter42;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter43;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter44;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter45;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter46;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter47;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter48;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter49;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter50;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter51;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter52;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter53;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter54;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter55;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter56;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter57;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter58;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter59;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter60;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter61;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter62;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter63;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter64;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter65;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter66;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter67;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter68;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter69;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter70;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter71;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter72;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter73;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter74;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter75;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter76;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter77;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter78;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter79;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter80;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter81;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_s_reg_338_pp0_iter82;
    sc_signal< sc_lv<32> > grp_fu_122_p2;
    sc_signal< sc_lv<32> > tanThetaA_reg_344;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter16;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter17;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter18;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter19;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter20;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter21;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter22;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter23;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter24;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter25;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter26;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter27;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter28;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter29;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter30;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter31;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter32;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter33;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter34;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter35;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter36;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter37;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter38;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tanThetaA_reg_344_pp0_iter39;
    sc_signal< sc_lv<32> > grp_fu_98_p2;
    sc_signal< sc_lv<32> > tmp_5_reg_351;
    sc_signal< sc_lv<32> > grp_fu_82_p2;
    sc_signal< sc_lv<32> > x_assign_reg_356;
    sc_signal< sc_lv<32> > grp_fu_132_p2;
    sc_signal< sc_lv<32> > tmp_i_i_reg_361;
    sc_signal< sc_lv<32> > grp_fu_102_p2;
    sc_signal< sc_lv<32> > cosThetaA_int_reg_371;
    sc_signal< sc_lv<1> > p_Result_13_fu_269_p3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter41;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter42;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter44;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter45;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter46;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter47;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter48;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter49;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter50;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter51;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter52;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter53;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter54;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter55;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter56;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter57;
    sc_signal< sc_lv<1> > ap_reg_ppstg_p_Result_13_reg_379_pp0_iter58;
    sc_signal< sc_lv<32> > grp_fu_106_p2;
    sc_signal< sc_lv<32> > sinThetaA_int_reg_383;
    sc_signal< sc_lv<32> > ap_reg_ppstg_sinThetaA_int_reg_383_pp0_iter44;
    sc_signal< sc_lv<32> > grp_fu_110_p2;
    sc_signal< sc_lv<32> > tmp_4_reg_389;
    sc_signal< sc_lv<32> > grp_fu_93_p2;
    sc_signal< sc_lv<32> > x_assign_2_reg_394;
    sc_signal< sc_lv<32> > grp_fu_137_p2;
    sc_signal< sc_lv<32> > cosThetaAdiv2_int_reg_399;
    sc_signal< sc_lv<32> > ap_reg_ppstg_cosThetaAdiv2_int_reg_399_pp0_iter81;
    sc_signal< sc_lv<32> > ap_reg_ppstg_cosThetaAdiv2_int_reg_399_pp0_iter82;
    sc_signal< sc_lv<32> > ap_reg_ppstg_cosThetaAdiv2_int_reg_399_pp0_iter83;
    sc_signal< sc_lv<32> > storemerge1_fu_277_p3;
    sc_signal< sc_lv<32> > p_s_fu_284_p3;
    sc_signal< sc_lv<32> > p_1_fu_291_p3;
    sc_signal< sc_lv<32> > ap_reg_phiprechg_tanThetaAdiv_reg_48pp0_it60;
    sc_signal< sc_lv<32> > ap_reg_phiprechg_tanThetaAdiv_reg_48pp0_it61;
    sc_signal< sc_lv<32> > ap_reg_phiprechg_cosThetaAdiv2_write_assign_reg_58pp0_it84;
    sc_signal< sc_lv<32> > cosThetaAdiv2_write_assign_phi_fu_61_p6;
    sc_signal< sc_lv<32> > ap_reg_phiprechg_cosThetaAdiv2_write_assign_reg_58pp0_it83;
    sc_signal< sc_lv<32> > grp_fu_116_p2;
    sc_signal< sc_lv<32> > ap_reg_phiprechg_sinThetaAdiv2_write_assign_reg_69pp0_it84;
    sc_signal< sc_lv<32> > sinThetaAdiv2_write_assign_phi_fu_73_p6;
    sc_signal< sc_lv<32> > ap_reg_phiprechg_sinThetaAdiv2_write_assign_reg_69pp0_it83;
    sc_signal< sc_lv<32> > grp_fu_87_p0;
    sc_signal< sc_lv<32> > grp_fu_87_p1;
    sc_signal< sc_lv<32> > grp_fu_102_p0;
    sc_signal< sc_lv<32> > grp_fu_128_p0;
    sc_signal< sc_lv<32> > grp_fu_128_p1;
    sc_signal< sc_lv<32> > p_Val2_s_fu_161_p1;
    sc_signal< sc_lv<32> > p_Val2_9_fu_176_p1;
    sc_signal< sc_lv<8> > loc_V_2_fu_180_p4;
    sc_signal< sc_lv<9> > lhs_V_cast_fu_190_p1;
    sc_signal< sc_lv<8> > loc_V_fu_166_p4;
    sc_signal< sc_lv<9> > r_V_fu_194_p2;
    sc_signal< sc_lv<9> > tmp_i_cast_fu_200_p1;
    sc_signal< sc_lv<1> > ult_fu_204_p2;
    sc_signal< sc_lv<1> > notrhs_i_fu_210_p2;
    sc_signal< sc_lv<9> > r_V_1_fu_222_p2;
    sc_signal< sc_lv<1> > ult3_fu_228_p2;
    sc_signal< sc_lv<1> > notrhs_i1_fu_234_p2;
    sc_signal< sc_lv<32> > p_Result_12_fu_254_p3;
    sc_signal< sc_lv<32> > p_Val2_12_fu_266_p1;
    sc_signal< sc_logic > grp_fu_82_ce;
    sc_signal< sc_lv<2> > grp_fu_87_opcode;
    sc_signal< sc_logic > grp_fu_87_ce;
    sc_signal< sc_logic > grp_fu_93_ce;
    sc_signal< sc_logic > grp_fu_98_ce;
    sc_signal< sc_logic > grp_fu_102_ce;
    sc_signal< sc_logic > grp_fu_106_ce;
    sc_signal< sc_logic > grp_fu_110_ce;
    sc_signal< sc_logic > grp_fu_116_ce;
    sc_signal< sc_logic > grp_fu_122_ce;
    sc_signal< sc_logic > grp_fu_128_ce;
    sc_signal< sc_logic > grp_fu_132_ce;
    sc_signal< sc_logic > grp_fu_137_ce;
    sc_signal< bool > ap_sig_694;
    sc_signal< bool > ap_sig_744;
    sc_signal< bool > ap_sig_608;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_true;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3F3504F3;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<9> ap_const_lv9_18;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<31> ap_const_lv31_3F800000;
    static const sc_lv<32> ap_const_lv32_BF3504F3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_reg_phiprechg_cosThetaAdiv2_write_assign_reg_58pp0_it83();
    void thread_ap_reg_phiprechg_sinThetaAdiv2_write_assign_reg_69pp0_it83();
    void thread_ap_reg_phiprechg_tanThetaAdiv_reg_48pp0_it60();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_sig_608();
    void thread_ap_sig_694();
    void thread_ap_sig_744();
    void thread_cosThetaAdiv2_write_assign_phi_fu_61_p6();
    void thread_demorgan5_fu_240_p2();
    void thread_demorgan_fu_216_p2();
    void thread_grp_fu_102_ce();
    void thread_grp_fu_102_p0();
    void thread_grp_fu_106_ce();
    void thread_grp_fu_110_ce();
    void thread_grp_fu_116_ce();
    void thread_grp_fu_122_ce();
    void thread_grp_fu_128_ce();
    void thread_grp_fu_128_p0();
    void thread_grp_fu_128_p1();
    void thread_grp_fu_132_ce();
    void thread_grp_fu_137_ce();
    void thread_grp_fu_82_ce();
    void thread_grp_fu_87_ce();
    void thread_grp_fu_87_opcode();
    void thread_grp_fu_87_p0();
    void thread_grp_fu_87_p1();
    void thread_grp_fu_93_ce();
    void thread_grp_fu_98_ce();
    void thread_lhs_V_cast_fu_190_p1();
    void thread_loc_V_2_fu_180_p4();
    void thread_loc_V_fu_166_p4();
    void thread_notrhs_i1_fu_234_p2();
    void thread_notrhs_i_fu_210_p2();
    void thread_p_1_fu_291_p3();
    void thread_p_Result_12_fu_254_p3();
    void thread_p_Result_13_fu_269_p3();
    void thread_p_Val2_12_fu_266_p1();
    void thread_p_Val2_9_fu_176_p1();
    void thread_p_Val2_s_fu_161_p1();
    void thread_p_s_fu_284_p3();
    void thread_r_V_1_fu_222_p2();
    void thread_r_V_fu_194_p2();
    void thread_sinThetaAdiv2_write_assign_phi_fu_73_p6();
    void thread_storemerge1_fu_277_p3();
    void thread_tmp_i_cast_fu_200_p1();
    void thread_ult3_fu_228_p2();
    void thread_ult_fu_204_p2();
};

}

using namespace ap_rtl;

#endif
