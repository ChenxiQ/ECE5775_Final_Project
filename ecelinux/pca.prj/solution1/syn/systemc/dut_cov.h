// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_cov_HH_
#define _dut_cov_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_matrix_multiply_alt26.h"
#include "dut_fdiv_32ns_32ns_32_16.h"
#include "dut_cov_XT.h"

namespace ap_rtl {

struct dut_cov : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<18> > X_address0;
    sc_out< sc_logic > X_ce0;
    sc_in< sc_lv<32> > X_q0;
    sc_out< sc_lv<20> > XXT_address0;
    sc_out< sc_logic > XXT_ce0;
    sc_out< sc_logic > XXT_we0;
    sc_out< sc_lv<32> > XXT_d0;
    sc_in< sc_lv<32> > XXT_q0;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    dut_cov(sc_module_name name);
    SC_HAS_PROCESS(dut_cov);

    ~dut_cov();

    sc_trace_file* mVcdFile;

    dut_cov_XT* XT_U;
    dut_matrix_multiply_alt26* grp_dut_matrix_multiply_alt26_fu_159;
    dut_fdiv_32ns_32ns_32_16<1,16,32,32,32>* dut_fdiv_32ns_32ns_32_16_U14;
    sc_signal< sc_lv<26> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_43;
    sc_signal< sc_lv<18> > next_mul2_fu_175_p2;
    sc_signal< sc_lv<18> > next_mul2_reg_284;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_69;
    sc_signal< sc_lv<10> > i_7_fu_187_p2;
    sc_signal< sc_lv<10> > i_7_reg_292;
    sc_signal< sc_lv<18> > tmp_cast_fu_193_p1;
    sc_signal< sc_lv<18> > tmp_cast_reg_297;
    sc_signal< sc_lv<1> > exitcond3_fu_181_p2;
    sc_signal< sc_lv<8> > j_5_fu_203_p2;
    sc_signal< sc_lv<8> > j_5_reg_305;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_86;
    sc_signal< sc_lv<1> > exitcond2_fu_197_p2;
    sc_signal< sc_lv<18> > next_mul_fu_224_p2;
    sc_signal< sc_lv<18> > next_mul_reg_315;
    sc_signal< sc_lv<18> > tmp_186_fu_230_p2;
    sc_signal< sc_lv<18> > tmp_186_reg_320;
    sc_signal< sc_lv<20> > next_mul4_fu_239_p2;
    sc_signal< sc_lv<20> > next_mul4_reg_325;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_104;
    sc_signal< sc_lv<10> > i_8_fu_251_p2;
    sc_signal< sc_lv<10> > i_8_reg_333;
    sc_signal< sc_lv<10> > j_6_fu_263_p2;
    sc_signal< sc_lv<10> > j_6_reg_341;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_115;
    sc_signal< sc_lv<20> > XXT_addr_reg_346;
    sc_signal< sc_lv<1> > exitcond_fu_257_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_128;
    sc_signal< sc_lv<32> > grp_fu_168_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st25_fsm_24;
    sc_signal< bool > ap_sig_137;
    sc_signal< sc_lv<18> > XT_address0;
    sc_signal< sc_logic > XT_ce0;
    sc_signal< sc_logic > XT_we0;
    sc_signal< sc_lv<32> > XT_q0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_ap_start;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_ap_done;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_ap_idle;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_ap_ready;
    sc_signal< sc_lv<18> > grp_dut_matrix_multiply_alt26_fu_159_A_address0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_A_ce0;
    sc_signal< sc_lv<18> > grp_dut_matrix_multiply_alt26_fu_159_B_address0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_B_ce0;
    sc_signal< sc_lv<20> > grp_dut_matrix_multiply_alt26_fu_159_C_address0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_C_ce0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt26_fu_159_C_we0;
    sc_signal< sc_lv<32> > grp_dut_matrix_multiply_alt26_fu_159_C_d0;
    sc_signal< sc_lv<10> > i_reg_80;
    sc_signal< sc_lv<18> > phi_mul1_reg_91;
    sc_signal< sc_lv<8> > j_reg_103;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_183;
    sc_signal< sc_lv<18> > phi_mul_reg_114;
    sc_signal< sc_lv<10> > i1_reg_125;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_195;
    sc_signal< sc_lv<20> > phi_mul3_reg_136;
    sc_signal< sc_lv<10> > j2_reg_148;
    sc_signal< sc_logic > ap_sig_cseq_ST_st26_fsm_25;
    sc_signal< bool > ap_sig_212;
    sc_signal< sc_lv<1> > exitcond1_fu_245_p2;
    sc_signal< sc_logic > ap_reg_grp_dut_matrix_multiply_alt26_fu_159_ap_start;
    sc_signal< sc_lv<64> > tmp_202_cast_fu_219_p1;
    sc_signal< sc_lv<64> > tmp_204_cast_fu_235_p1;
    sc_signal< sc_lv<64> > tmp_205_cast_fu_279_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_231;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_239;
    sc_signal< sc_lv<18> > tmp_151_cast_fu_209_p1;
    sc_signal< sc_lv<18> > tmp_s_fu_213_p2;
    sc_signal< sc_lv<20> > tmp_152_cast_fu_269_p1;
    sc_signal< sc_lv<20> > tmp_187_fu_273_p2;
    sc_signal< sc_lv<26> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<26> ap_ST_st1_fsm_0;
    static const sc_lv<26> ap_ST_st2_fsm_1;
    static const sc_lv<26> ap_ST_st3_fsm_2;
    static const sc_lv<26> ap_ST_st4_fsm_3;
    static const sc_lv<26> ap_ST_st5_fsm_4;
    static const sc_lv<26> ap_ST_st6_fsm_5;
    static const sc_lv<26> ap_ST_st7_fsm_6;
    static const sc_lv<26> ap_ST_st8_fsm_7;
    static const sc_lv<26> ap_ST_st9_fsm_8;
    static const sc_lv<26> ap_ST_st10_fsm_9;
    static const sc_lv<26> ap_ST_st11_fsm_10;
    static const sc_lv<26> ap_ST_st12_fsm_11;
    static const sc_lv<26> ap_ST_st13_fsm_12;
    static const sc_lv<26> ap_ST_st14_fsm_13;
    static const sc_lv<26> ap_ST_st15_fsm_14;
    static const sc_lv<26> ap_ST_st16_fsm_15;
    static const sc_lv<26> ap_ST_st17_fsm_16;
    static const sc_lv<26> ap_ST_st18_fsm_17;
    static const sc_lv<26> ap_ST_st19_fsm_18;
    static const sc_lv<26> ap_ST_st20_fsm_19;
    static const sc_lv<26> ap_ST_st21_fsm_20;
    static const sc_lv<26> ap_ST_st22_fsm_21;
    static const sc_lv<26> ap_ST_st23_fsm_22;
    static const sc_lv<26> ap_ST_st24_fsm_23;
    static const sc_lv<26> ap_ST_st25_fsm_24;
    static const sc_lv<26> ap_ST_st26_fsm_25;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<18> ap_const_lv18_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_43470000;
    static const sc_lv<18> ap_const_lv18_C8;
    static const sc_lv<10> ap_const_lv10_310;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<8> ap_const_lv8_C8;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<18> ap_const_lv18_310;
    static const sc_lv<20> ap_const_lv20_310;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_XT_address0();
    void thread_XT_ce0();
    void thread_XT_we0();
    void thread_XXT_address0();
    void thread_XXT_ce0();
    void thread_XXT_d0();
    void thread_XXT_we0();
    void thread_X_address0();
    void thread_X_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_104();
    void thread_ap_sig_115();
    void thread_ap_sig_128();
    void thread_ap_sig_137();
    void thread_ap_sig_183();
    void thread_ap_sig_195();
    void thread_ap_sig_212();
    void thread_ap_sig_231();
    void thread_ap_sig_239();
    void thread_ap_sig_43();
    void thread_ap_sig_69();
    void thread_ap_sig_86();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st25_fsm_24();
    void thread_ap_sig_cseq_ST_st26_fsm_25();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_exitcond1_fu_245_p2();
    void thread_exitcond2_fu_197_p2();
    void thread_exitcond3_fu_181_p2();
    void thread_exitcond_fu_257_p2();
    void thread_grp_dut_matrix_multiply_alt26_fu_159_ap_start();
    void thread_i_7_fu_187_p2();
    void thread_i_8_fu_251_p2();
    void thread_j_5_fu_203_p2();
    void thread_j_6_fu_263_p2();
    void thread_next_mul2_fu_175_p2();
    void thread_next_mul4_fu_239_p2();
    void thread_next_mul_fu_224_p2();
    void thread_tmp_151_cast_fu_209_p1();
    void thread_tmp_152_cast_fu_269_p1();
    void thread_tmp_186_fu_230_p2();
    void thread_tmp_187_fu_273_p2();
    void thread_tmp_202_cast_fu_219_p1();
    void thread_tmp_204_cast_fu_235_p1();
    void thread_tmp_205_cast_fu_279_p1();
    void thread_tmp_cast_fu_193_p1();
    void thread_tmp_s_fu_213_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
