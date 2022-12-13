// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_calc_svd_HH_
#define _dut_calc_svd_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_calc_angle_float_float_s.h"
#include "dut_faddfsub_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_fcmp_32ns_32ns_1_1.h"

namespace ap_rtl {

struct dut_calc_svd : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > strm_in_V_dout;
    sc_in< sc_logic > strm_in_V_empty_n;
    sc_out< sc_logic > strm_in_V_read;
    sc_out< sc_lv<32> > strm_out_V_din;
    sc_in< sc_logic > strm_out_V_full_n;
    sc_out< sc_logic > strm_out_V_write;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_lv<5> > ap_var_for_const1;


    // Module declarations
    dut_calc_svd(sc_module_name name);
    SC_HAS_PROCESS(dut_calc_svd);

    ~dut_calc_svd();

    sc_trace_file* mVcdFile;

    dut_calc_angle_float_float_s* grp_dut_calc_angle_float_float_s_fu_101;
    dut_faddfsub_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_faddfsub_32ns_32ns_32_5_full_dsp_U19;
    dut_faddfsub_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_faddfsub_32ns_32ns_32_5_full_dsp_U20;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U21;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U22;
    dut_fcmp_32ns_32ns_1_1<1,1,32,32,1>* dut_fcmp_32ns_32ns_1_1_U23;
    sc_signal< sc_lv<14> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_31;
    sc_signal< sc_logic > strm_in_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg1_fsm_2;
    sc_signal< bool > ap_sig_50;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it9;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it10;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it11;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it12;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it13;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it14;
    sc_signal< sc_lv<1> > exitcond_reg_403;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg2_fsm_3;
    sc_signal< bool > ap_sig_92;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg3_fsm_4;
    sc_signal< bool > ap_sig_102;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg4_fsm_5;
    sc_signal< bool > ap_sig_112;
    sc_signal< sc_logic > strm_out_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg11_fsm_12;
    sc_signal< bool > ap_sig_123;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter13;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_134;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter14;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg5_fsm_6;
    sc_signal< bool > ap_sig_158;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg6_fsm_7;
    sc_signal< bool > ap_sig_168;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg7_fsm_8;
    sc_signal< bool > ap_sig_178;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg8_fsm_9;
    sc_signal< bool > ap_sig_188;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg9_fsm_10;
    sc_signal< bool > ap_sig_198;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg10_fsm_11;
    sc_signal< bool > ap_sig_208;
    sc_signal< sc_lv<4> > proc_reg_90;
    sc_signal< sc_lv<32> > grp_fu_107_p2;
    sc_signal< sc_lv<32> > reg_136;
    sc_signal< bool > ap_sig_220;
    sc_signal< bool > ap_sig_228;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter12;
    sc_signal< bool > ap_sig_238;
    sc_signal< sc_lv<32> > grp_fu_111_p2;
    sc_signal< sc_lv<32> > reg_143;
    sc_signal< sc_lv<32> > reg_149;
    sc_signal< sc_lv<32> > grp_fu_115_p2;
    sc_signal< sc_lv<32> > reg_155;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter11;
    sc_signal< sc_lv<32> > reg_161;
    sc_signal< sc_lv<32> > grp_fu_119_p2;
    sc_signal< sc_lv<32> > reg_166;
    sc_signal< sc_lv<32> > reg_171;
    sc_signal< sc_lv<32> > reg_177;
    sc_signal< sc_lv<1> > exitcond_fu_183_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_403_pp0_iter10;
    sc_signal< sc_lv<4> > proc_1_fu_189_p2;
    sc_signal< sc_lv<4> > proc_1_reg_407;
    sc_signal< sc_lv<32> > tmp_20_reg_412;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter1;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter2;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter3;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter4;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter5;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter6;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter8;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter9;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter10;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_20_reg_412_pp0_iter11;
    sc_signal< sc_lv<32> > tmp_21_reg_419;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter1;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter2;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter3;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter4;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter5;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter6;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter8;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter9;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter10;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_21_reg_419_pp0_iter11;
    sc_signal< sc_lv<32> > tmp_22_reg_426;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter1;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter2;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter3;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter4;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter5;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter6;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter8;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter9;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter10;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_22_reg_426_pp0_iter11;
    sc_signal< sc_lv<32> > tmp_23_reg_433;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter1;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter2;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter3;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter4;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter5;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter6;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter8;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter9;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter10;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_23_reg_433_pp0_iter11;
    sc_signal< sc_lv<32> > u1_1_reg_440;
    sc_signal< sc_lv<32> > cosA_half_reg_445;
    sc_signal< sc_lv<32> > sinA_half_reg_452;
    sc_signal< sc_lv<32> > cosB_half_reg_459;
    sc_signal< sc_lv<32> > sinB_half_reg_465;
    sc_signal< sc_lv<32> > a2_assign_1_fu_204_p1;
    sc_signal< sc_lv<32> > a2_assign_fu_218_p1;
    sc_signal< sc_lv<32> > tmp_i_reg_481;
    sc_signal< sc_lv<32> > tmp_i1_reg_486;
    sc_signal< sc_lv<32> > tmp_3_i3_reg_491;
    sc_signal< sc_lv<32> > tmp_3_i_reg_496;
    sc_signal< sc_lv<32> > tmp_3_i1_reg_501;
    sc_signal< sc_lv<32> > vz_int_1_reg_506;
    sc_signal< sc_lv<32> > ap_reg_ppstg_vz_int_1_reg_506_pp0_iter12;
    sc_signal< sc_lv<32> > ap_reg_ppstg_vz_int_1_reg_506_pp0_iter13;
    sc_signal< sc_lv<32> > vy_int_1_reg_515;
    sc_signal< sc_lv<32> > ap_reg_ppstg_vy_int_1_reg_515_pp0_iter12;
    sc_signal< sc_lv<32> > ap_reg_ppstg_vy_int_1_reg_515_pp0_iter13;
    sc_signal< sc_lv<32> > vy_int_fu_232_p1;
    sc_signal< sc_lv<32> > vy_int_reg_523;
    sc_signal< sc_lv<32> > ap_reg_ppstg_vy_int_reg_523_pp0_iter12;
    sc_signal< sc_lv<32> > ap_reg_ppstg_vy_int_reg_523_pp0_iter13;
    sc_signal< sc_lv<32> > tmp_13_reg_530;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_13_reg_530_pp0_iter12;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_13_reg_530_pp0_iter13;
    sc_signal< sc_lv<32> > tmp_14_reg_537;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_14_reg_537_pp0_iter12;
    sc_signal< sc_lv<32> > ap_reg_ppstg_tmp_14_reg_537_pp0_iter13;
    sc_signal< sc_lv<32> > uy_int_fu_246_p1;
    sc_signal< sc_lv<32> > uy_int_reg_544;
    sc_signal< sc_lv<32> > ap_reg_ppstg_uy_int_reg_544_pp0_iter13;
    sc_signal< sc_lv<32> > tmp_3_i6_reg_550;
    sc_signal< sc_lv<32> > z_out1_reg_555;
    sc_signal< sc_lv<32> > w_out_int_reg_560;
    sc_signal< sc_lv<1> > grp_fu_123_p2;
    sc_signal< sc_lv<1> > tmp_5_reg_567;
    sc_signal< sc_lv<32> > tmp_i7_reg_572;
    sc_signal< sc_lv<32> > tmp_3_i9_reg_577;
    sc_signal< sc_lv<1> > tmp_6_fu_286_p2;
    sc_signal< sc_lv<1> > tmp_6_reg_582;
    sc_signal< sc_lv<32> > w_out_3_fu_301_p3;
    sc_signal< sc_lv<32> > w_out_3_reg_588;
    sc_signal< sc_lv<32> > c_write_assign_9_to_int_fu_308_p1;
    sc_signal< sc_lv<32> > c_write_assign_9_to_int_reg_593;
    sc_signal< sc_lv<1> > tmp_10_fu_344_p2;
    sc_signal< sc_lv<1> > tmp_10_reg_598;
    sc_signal< sc_lv<32> > vx_int_fu_387_p3;
    sc_signal< sc_lv<32> > vx_int_reg_605;
    sc_signal< sc_lv<32> > vy_int_2_fu_392_p3;
    sc_signal< sc_lv<32> > vy_int_2_reg_610;
    sc_signal< sc_lv<32> > vz_int_fu_397_p3;
    sc_signal< sc_lv<32> > vz_int_reg_615;
    sc_signal< sc_lv<32> > grp_dut_calc_angle_float_float_s_fu_101_A_r;
    sc_signal< sc_lv<32> > grp_dut_calc_angle_float_float_s_fu_101_A_i;
    sc_signal< sc_lv<32> > grp_dut_calc_angle_float_float_s_fu_101_ap_return_0;
    sc_signal< sc_lv<32> > grp_dut_calc_angle_float_float_s_fu_101_ap_return_1;
    sc_signal< sc_logic > grp_dut_calc_angle_float_float_s_fu_101_ap_ce;
    sc_signal< sc_lv<4> > proc_phi_fu_94_p4;
    sc_signal< sc_lv<32> > z_out_3_fu_359_p3;
    sc_signal< sc_lv<32> > vw_int_3_fu_380_p3;
    sc_signal< sc_lv<32> > grp_fu_107_p0;
    sc_signal< sc_lv<32> > grp_fu_107_p1;
    sc_signal< sc_lv<32> > grp_fu_111_p0;
    sc_signal< sc_lv<32> > grp_fu_111_p1;
    sc_signal< sc_lv<32> > grp_fu_115_p0;
    sc_signal< sc_lv<32> > grp_fu_115_p1;
    sc_signal< sc_lv<32> > grp_fu_119_p0;
    sc_signal< sc_lv<32> > grp_fu_119_p1;
    sc_signal< sc_lv<32> > grp_fu_123_p0;
    sc_signal< sc_lv<32> > tmp_9_to_int_fu_195_p1;
    sc_signal< sc_lv<32> > tmp_9_neg_fu_198_p2;
    sc_signal< sc_lv<32> > tmp_8_to_int_fu_209_p1;
    sc_signal< sc_lv<32> > tmp_8_neg_fu_212_p2;
    sc_signal< sc_lv<32> > vy_int_to_int_fu_223_p1;
    sc_signal< sc_lv<32> > vy_int_neg_fu_226_p2;
    sc_signal< sc_lv<32> > uy_int_to_int_fu_237_p1;
    sc_signal< sc_lv<32> > uy_int_neg_fu_240_p2;
    sc_signal< sc_lv<32> > c_write_assign_6_to_int_fu_251_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_254_p4;
    sc_signal< sc_lv<23> > tmp_fu_264_p1;
    sc_signal< sc_lv<1> > notrhs_fu_274_p2;
    sc_signal< sc_lv<1> > notlhs_fu_268_p2;
    sc_signal< sc_lv<1> > tmp_3_fu_280_p2;
    sc_signal< sc_lv<32> > w_out_neg_fu_291_p2;
    sc_signal< sc_lv<32> > w_out_fu_297_p1;
    sc_signal< sc_lv<8> > tmp_7_fu_312_p4;
    sc_signal< sc_lv<23> > tmp_2_fu_322_p1;
    sc_signal< sc_lv<1> > notrhs3_fu_332_p2;
    sc_signal< sc_lv<1> > notlhs2_fu_326_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_338_p2;
    sc_signal< sc_lv<32> > z_out_neg_fu_350_p2;
    sc_signal< sc_lv<32> > z_out_fu_355_p1;
    sc_signal< sc_lv<32> > vw_int_to_int_fu_367_p1;
    sc_signal< sc_lv<32> > vw_int_neg_fu_370_p2;
    sc_signal< sc_lv<32> > vw_int_fu_376_p1;
    sc_signal< sc_lv<2> > grp_fu_107_opcode;
    sc_signal< sc_logic > grp_fu_107_ce;
    sc_signal< sc_lv<2> > grp_fu_111_opcode;
    sc_signal< sc_logic > grp_fu_111_ce;
    sc_signal< sc_logic > grp_fu_115_ce;
    sc_signal< sc_logic > grp_fu_119_ce;
    sc_signal< sc_logic > ap_sig_cseq_ST_st181_fsm_13;
    sc_signal< bool > ap_sig_847;
    sc_signal< sc_lv<14> > ap_NS_fsm;
    sc_signal< bool > ap_sig_897;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<14> ap_ST_st1_fsm_0;
    static const sc_lv<14> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<14> ap_ST_pp0_stg1_fsm_2;
    static const sc_lv<14> ap_ST_pp0_stg2_fsm_3;
    static const sc_lv<14> ap_ST_pp0_stg3_fsm_4;
    static const sc_lv<14> ap_ST_pp0_stg4_fsm_5;
    static const sc_lv<14> ap_ST_pp0_stg5_fsm_6;
    static const sc_lv<14> ap_ST_pp0_stg6_fsm_7;
    static const sc_lv<14> ap_ST_pp0_stg7_fsm_8;
    static const sc_lv<14> ap_ST_pp0_stg8_fsm_9;
    static const sc_lv<14> ap_ST_pp0_stg9_fsm_10;
    static const sc_lv<14> ap_ST_pp0_stg10_fsm_11;
    static const sc_lv<14> ap_ST_pp0_stg11_fsm_12;
    static const sc_lv<14> ap_ST_st181_fsm_13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_80000000;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_4;
    static const sc_lv<32> ap_const_lv32_D;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_a2_assign_1_fu_204_p1();
    void thread_a2_assign_fu_218_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_102();
    void thread_ap_sig_112();
    void thread_ap_sig_123();
    void thread_ap_sig_134();
    void thread_ap_sig_158();
    void thread_ap_sig_168();
    void thread_ap_sig_178();
    void thread_ap_sig_188();
    void thread_ap_sig_198();
    void thread_ap_sig_208();
    void thread_ap_sig_220();
    void thread_ap_sig_228();
    void thread_ap_sig_238();
    void thread_ap_sig_31();
    void thread_ap_sig_50();
    void thread_ap_sig_847();
    void thread_ap_sig_897();
    void thread_ap_sig_92();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_pp0_stg10_fsm_11();
    void thread_ap_sig_cseq_ST_pp0_stg11_fsm_12();
    void thread_ap_sig_cseq_ST_pp0_stg1_fsm_2();
    void thread_ap_sig_cseq_ST_pp0_stg2_fsm_3();
    void thread_ap_sig_cseq_ST_pp0_stg3_fsm_4();
    void thread_ap_sig_cseq_ST_pp0_stg4_fsm_5();
    void thread_ap_sig_cseq_ST_pp0_stg5_fsm_6();
    void thread_ap_sig_cseq_ST_pp0_stg6_fsm_7();
    void thread_ap_sig_cseq_ST_pp0_stg7_fsm_8();
    void thread_ap_sig_cseq_ST_pp0_stg8_fsm_9();
    void thread_ap_sig_cseq_ST_pp0_stg9_fsm_10();
    void thread_ap_sig_cseq_ST_st181_fsm_13();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_c_write_assign_6_to_int_fu_251_p1();
    void thread_c_write_assign_9_to_int_fu_308_p1();
    void thread_exitcond_fu_183_p2();
    void thread_grp_dut_calc_angle_float_float_s_fu_101_A_i();
    void thread_grp_dut_calc_angle_float_float_s_fu_101_A_r();
    void thread_grp_dut_calc_angle_float_float_s_fu_101_ap_ce();
    void thread_grp_fu_107_ce();
    void thread_grp_fu_107_opcode();
    void thread_grp_fu_107_p0();
    void thread_grp_fu_107_p1();
    void thread_grp_fu_111_ce();
    void thread_grp_fu_111_opcode();
    void thread_grp_fu_111_p0();
    void thread_grp_fu_111_p1();
    void thread_grp_fu_115_ce();
    void thread_grp_fu_115_p0();
    void thread_grp_fu_115_p1();
    void thread_grp_fu_119_ce();
    void thread_grp_fu_119_p0();
    void thread_grp_fu_119_p1();
    void thread_grp_fu_123_p0();
    void thread_notlhs2_fu_326_p2();
    void thread_notlhs_fu_268_p2();
    void thread_notrhs3_fu_332_p2();
    void thread_notrhs_fu_274_p2();
    void thread_proc_1_fu_189_p2();
    void thread_proc_phi_fu_94_p4();
    void thread_strm_in_V_blk_n();
    void thread_strm_in_V_read();
    void thread_strm_out_V_blk_n();
    void thread_strm_out_V_din();
    void thread_strm_out_V_write();
    void thread_tmp_10_fu_344_p2();
    void thread_tmp_2_fu_322_p1();
    void thread_tmp_3_fu_280_p2();
    void thread_tmp_4_fu_254_p4();
    void thread_tmp_6_fu_286_p2();
    void thread_tmp_7_fu_312_p4();
    void thread_tmp_8_fu_338_p2();
    void thread_tmp_8_neg_fu_212_p2();
    void thread_tmp_8_to_int_fu_209_p1();
    void thread_tmp_9_neg_fu_198_p2();
    void thread_tmp_9_to_int_fu_195_p1();
    void thread_tmp_fu_264_p1();
    void thread_uy_int_fu_246_p1();
    void thread_uy_int_neg_fu_240_p2();
    void thread_uy_int_to_int_fu_237_p1();
    void thread_vw_int_3_fu_380_p3();
    void thread_vw_int_fu_376_p1();
    void thread_vw_int_neg_fu_370_p2();
    void thread_vw_int_to_int_fu_367_p1();
    void thread_vx_int_fu_387_p3();
    void thread_vy_int_2_fu_392_p3();
    void thread_vy_int_fu_232_p1();
    void thread_vy_int_neg_fu_226_p2();
    void thread_vy_int_to_int_fu_223_p1();
    void thread_vz_int_fu_397_p3();
    void thread_w_out_3_fu_301_p3();
    void thread_w_out_fu_297_p1();
    void thread_w_out_neg_fu_291_p2();
    void thread_z_out_3_fu_359_p3();
    void thread_z_out_fu_355_p1();
    void thread_z_out_neg_fu_350_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
