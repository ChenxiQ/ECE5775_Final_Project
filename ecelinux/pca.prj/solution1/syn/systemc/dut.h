// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_HH_
#define _dut_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_svd_pairs.h"
#include "dut_cov.h"
#include "dut_normalize.h"
#include "dut_matrix_multiply_alt2.h"
#include "dut_rank.h"
#include "dut_uitofp_32ns_32_6.h"
#include "dut_cov_XT.h"
#include "dut_Y_assign.h"
#include "dut_tsf_mat.h"
#include "dut_pca_sorted_idx.h"
#include "dut_svd_pairs_s_col1.h"
#include "dut_U.h"
#include "dut_V.h"
#include "dut_XXT.h"
#include "dut_mean.h"

namespace ap_rtl {

struct dut : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > strm_in_V_V_dout;
    sc_in< sc_logic > strm_in_V_V_empty_n;
    sc_out< sc_logic > strm_in_V_V_read;
    sc_out< sc_lv<32> > strm_out_V_din;
    sc_in< sc_logic > strm_out_V_full_n;
    sc_out< sc_logic > strm_out_V_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    dut(sc_module_name name);
    SC_HAS_PROCESS(dut);

    ~dut();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dut_cov_XT* X_U;
    dut_Y_assign* Y_assign_U;
    dut_tsf_mat* tsf_mat_U;
    dut_pca_sorted_idx* pca_sorted_idx_U;
    dut_svd_pairs_s_col1* S_U;
    dut_U* U_U;
    dut_V* V_U;
    dut_XXT* XXT_U;
    dut_mean* mean_U;
    dut_svd_pairs* grp_dut_svd_pairs_fu_422;
    dut_cov* grp_dut_cov_fu_430;
    dut_normalize* grp_dut_normalize_fu_436;
    dut_matrix_multiply_alt2* grp_dut_matrix_multiply_alt2_fu_442;
    dut_rank* grp_dut_rank_fu_449;
    dut_uitofp_32ns_32_6<1,6,32,32>* dut_uitofp_32ns_32_6_U57;
    sc_signal< sc_lv<32> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_47;
    sc_signal< sc_logic > strm_in_V_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_68;
    sc_signal< sc_lv<1> > exitcond2_fu_476_p2;
    sc_signal< sc_logic > strm_out_V_blk_n;
    sc_signal< sc_logic > ap_sig_cseq_ST_st27_fsm_26;
    sc_signal< bool > ap_sig_80;
    sc_signal< sc_logic > ap_sig_cseq_ST_st30_fsm_29;
    sc_signal< bool > ap_sig_87;
    sc_signal< sc_logic > ap_sig_cseq_ST_st32_fsm_31;
    sc_signal< bool > ap_sig_95;
    sc_signal< sc_lv<8> > test_1_fu_466_p2;
    sc_signal< sc_lv<8> > test_1_reg_829;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_105;
    sc_signal< sc_lv<18> > tmp_cast_fu_472_p1;
    sc_signal< sc_lv<18> > tmp_cast_reg_834;
    sc_signal< sc_lv<1> > exitcond1_fu_460_p2;
    sc_signal< sc_lv<8> > i_2_fu_482_p2;
    sc_signal< sc_lv<8> > i_2_reg_842;
    sc_signal< bool > ap_sig_116;
    sc_signal< sc_lv<32> > tmp_V_reg_847;
    sc_signal< sc_lv<10> > tmp_140_fu_488_p3;
    sc_signal< sc_lv<10> > tmp_140_reg_853;
    sc_signal< sc_lv<3> > j_1_fu_506_p2;
    sc_signal< sc_lv<3> > j_1_reg_861;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_131;
    sc_signal< sc_lv<32> > p_Result_s_fu_620_p2;
    sc_signal< sc_lv<32> > p_Result_s_reg_866;
    sc_signal< sc_lv<1> > exitcond4_fu_500_p2;
    sc_signal< sc_lv<10> > tmp_143_fu_626_p2;
    sc_signal< sc_lv<10> > tmp_143_reg_871;
    sc_signal< sc_lv<18> > tmp_181_fu_640_p2;
    sc_signal< sc_lv<18> > tmp_181_reg_876;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_147;
    sc_signal< sc_lv<32> > grp_fu_457_p1;
    sc_signal< sc_lv<32> > tmp_142_reg_881;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_156;
    sc_signal< sc_lv<10> > i_1_fu_660_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_165;
    sc_signal< sc_lv<20> > next_mul_fu_671_p2;
    sc_signal< sc_lv<20> > next_mul_reg_894;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_174;
    sc_signal< sc_lv<10> > i_3_fu_683_p2;
    sc_signal< sc_lv<10> > i_3_reg_902;
    sc_signal< sc_lv<10> > j_2_fu_695_p2;
    sc_signal< sc_lv<10> > j_2_reg_910;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_185;
    sc_signal< sc_lv<1> > exitcond6_fu_689_p2;
    sc_signal< sc_lv<12> > next_mul2_fu_719_p2;
    sc_signal< sc_lv<12> > next_mul2_reg_935;
    sc_signal< sc_logic > ap_sig_cseq_ST_st25_fsm_24;
    sc_signal< bool > ap_sig_205;
    sc_signal< sc_lv<5> > i_4_fu_731_p2;
    sc_signal< sc_lv<5> > i_4_reg_943;
    sc_signal< sc_lv<8> > j_3_fu_743_p2;
    sc_signal< sc_lv<8> > j_3_reg_951;
    sc_signal< sc_logic > ap_sig_cseq_ST_st26_fsm_25;
    sc_signal< bool > ap_sig_216;
    sc_signal< sc_lv<1> > exitcond8_fu_737_p2;
    sc_signal< sc_lv<14> > next_mul4_fu_764_p2;
    sc_signal< sc_lv<14> > next_mul4_reg_961;
    sc_signal< sc_logic > ap_sig_cseq_ST_st28_fsm_27;
    sc_signal< bool > ap_sig_230;
    sc_signal< sc_lv<5> > i_6_fu_776_p2;
    sc_signal< sc_lv<5> > i_6_reg_969;
    sc_signal< sc_lv<10> > j_4_fu_788_p2;
    sc_signal< sc_lv<10> > j_4_reg_977;
    sc_signal< sc_logic > ap_sig_cseq_ST_st29_fsm_28;
    sc_signal< bool > ap_sig_241;
    sc_signal< sc_lv<1> > exitcond9_fu_782_p2;
    sc_signal< sc_lv<10> > i_5_fu_815_p2;
    sc_signal< sc_lv<10> > i_5_reg_990;
    sc_signal< sc_logic > ap_sig_cseq_ST_st31_fsm_30;
    sc_signal< bool > ap_sig_255;
    sc_signal< sc_lv<1> > exitcond_fu_809_p2;
    sc_signal< sc_lv<18> > X_address0;
    sc_signal< sc_logic > X_ce0;
    sc_signal< sc_logic > X_we0;
    sc_signal< sc_lv<32> > X_d0;
    sc_signal< sc_lv<32> > X_q0;
    sc_signal< sc_lv<12> > Y_assign_address0;
    sc_signal< sc_logic > Y_assign_ce0;
    sc_signal< sc_lv<32> > Y_assign_q0;
    sc_signal< sc_lv<14> > tsf_mat_address0;
    sc_signal< sc_logic > tsf_mat_ce0;
    sc_signal< sc_lv<32> > tsf_mat_q0;
    sc_signal< sc_lv<10> > pca_sorted_idx_address0;
    sc_signal< sc_logic > pca_sorted_idx_ce0;
    sc_signal< sc_logic > pca_sorted_idx_we0;
    sc_signal< sc_lv<32> > pca_sorted_idx_d0;
    sc_signal< sc_lv<32> > pca_sorted_idx_q0;
    sc_signal< sc_logic > pca_sorted_idx_ce1;
    sc_signal< sc_lv<32> > pca_sorted_idx_q1;
    sc_signal< sc_lv<20> > S_address0;
    sc_signal< sc_logic > S_ce0;
    sc_signal< sc_logic > S_we0;
    sc_signal< sc_lv<32> > S_d0;
    sc_signal< sc_lv<32> > S_q0;
    sc_signal< sc_lv<20> > S_address1;
    sc_signal< sc_logic > S_ce1;
    sc_signal< sc_lv<32> > S_q1;
    sc_signal< sc_lv<20> > U_address0;
    sc_signal< sc_logic > U_ce0;
    sc_signal< sc_logic > U_we0;
    sc_signal< sc_lv<32> > U_d0;
    sc_signal< sc_lv<32> > U_q0;
    sc_signal< sc_logic > U_ce1;
    sc_signal< sc_lv<20> > V_address0;
    sc_signal< sc_logic > V_ce0;
    sc_signal< sc_logic > V_we0;
    sc_signal< sc_lv<32> > V_d0;
    sc_signal< sc_logic > V_ce1;
    sc_signal< sc_lv<20> > XXT_address0;
    sc_signal< sc_logic > XXT_ce0;
    sc_signal< sc_logic > XXT_we0;
    sc_signal< sc_lv<32> > XXT_d0;
    sc_signal< sc_lv<32> > XXT_q0;
    sc_signal< sc_logic > XXT_ce1;
    sc_signal< sc_lv<32> > XXT_q1;
    sc_signal< sc_lv<10> > mean_address0;
    sc_signal< sc_logic > mean_ce0;
    sc_signal< sc_lv<32> > mean_q0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_ap_start;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_ap_done;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_ap_idle;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_ap_ready;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_A_address0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_A_ce0;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_A_address1;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_A_ce1;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_S_address0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_S_ce0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_S_we0;
    sc_signal< sc_lv<32> > grp_dut_svd_pairs_fu_422_S_d0;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_S_address1;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_S_ce1;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_S_we1;
    sc_signal< sc_lv<32> > grp_dut_svd_pairs_fu_422_S_d1;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_U_address0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_U_ce0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_U_we0;
    sc_signal< sc_lv<32> > grp_dut_svd_pairs_fu_422_U_d0;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_U_address1;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_U_ce1;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_U_we1;
    sc_signal< sc_lv<32> > grp_dut_svd_pairs_fu_422_U_d1;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_V_address0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_V_ce0;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_V_we0;
    sc_signal< sc_lv<32> > grp_dut_svd_pairs_fu_422_V_d0;
    sc_signal< sc_lv<20> > grp_dut_svd_pairs_fu_422_V_address1;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_V_ce1;
    sc_signal< sc_logic > grp_dut_svd_pairs_fu_422_V_we1;
    sc_signal< sc_lv<32> > grp_dut_svd_pairs_fu_422_V_d1;
    sc_signal< sc_logic > grp_dut_cov_fu_430_ap_start;
    sc_signal< sc_logic > grp_dut_cov_fu_430_ap_done;
    sc_signal< sc_logic > grp_dut_cov_fu_430_ap_idle;
    sc_signal< sc_logic > grp_dut_cov_fu_430_ap_ready;
    sc_signal< sc_lv<18> > grp_dut_cov_fu_430_X_address0;
    sc_signal< sc_logic > grp_dut_cov_fu_430_X_ce0;
    sc_signal< sc_lv<20> > grp_dut_cov_fu_430_XXT_address0;
    sc_signal< sc_logic > grp_dut_cov_fu_430_XXT_ce0;
    sc_signal< sc_logic > grp_dut_cov_fu_430_XXT_we0;
    sc_signal< sc_lv<32> > grp_dut_cov_fu_430_XXT_d0;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_ap_start;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_ap_done;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_ap_idle;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_ap_ready;
    sc_signal< sc_lv<18> > grp_dut_normalize_fu_436_X_address0;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_X_ce0;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_X_we0;
    sc_signal< sc_lv<32> > grp_dut_normalize_fu_436_X_d0;
    sc_signal< sc_lv<10> > grp_dut_normalize_fu_436_mean_address0;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_mean_ce0;
    sc_signal< sc_logic > grp_dut_normalize_fu_436_mean_we0;
    sc_signal< sc_lv<32> > grp_dut_normalize_fu_436_mean_d0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_ap_start;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_ap_done;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_ap_idle;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_ap_ready;
    sc_signal< sc_lv<14> > grp_dut_matrix_multiply_alt2_fu_442_A_address0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_A_ce0;
    sc_signal< sc_lv<18> > grp_dut_matrix_multiply_alt2_fu_442_B_address0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_B_ce0;
    sc_signal< sc_lv<12> > grp_dut_matrix_multiply_alt2_fu_442_C_address0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_C_ce0;
    sc_signal< sc_logic > grp_dut_matrix_multiply_alt2_fu_442_C_we0;
    sc_signal< sc_lv<32> > grp_dut_matrix_multiply_alt2_fu_442_C_d0;
    sc_signal< sc_logic > grp_dut_rank_fu_449_ap_start;
    sc_signal< sc_logic > grp_dut_rank_fu_449_ap_done;
    sc_signal< sc_logic > grp_dut_rank_fu_449_ap_idle;
    sc_signal< sc_logic > grp_dut_rank_fu_449_ap_ready;
    sc_signal< sc_lv<10> > grp_dut_rank_fu_449_PCA_sorted_idx_address0;
    sc_signal< sc_logic > grp_dut_rank_fu_449_PCA_sorted_idx_ce0;
    sc_signal< sc_logic > grp_dut_rank_fu_449_PCA_sorted_idx_we0;
    sc_signal< sc_lv<32> > grp_dut_rank_fu_449_PCA_sorted_idx_d0;
    sc_signal< sc_lv<10> > grp_dut_rank_fu_449_PCA_sorted_idx_address1;
    sc_signal< sc_logic > grp_dut_rank_fu_449_PCA_sorted_idx_ce1;
    sc_signal< sc_logic > grp_dut_rank_fu_449_PCA_sorted_idx_we1;
    sc_signal< sc_lv<32> > grp_dut_rank_fu_449_PCA_sorted_idx_d1;
    sc_signal< sc_lv<14> > grp_dut_rank_fu_449_tsf_mat_address0;
    sc_signal< sc_logic > grp_dut_rank_fu_449_tsf_mat_ce0;
    sc_signal< sc_logic > grp_dut_rank_fu_449_tsf_mat_we0;
    sc_signal< sc_lv<32> > grp_dut_rank_fu_449_tsf_mat_d0;
    sc_signal< sc_lv<20> > grp_dut_rank_fu_449_S_address0;
    sc_signal< sc_logic > grp_dut_rank_fu_449_S_ce0;
    sc_signal< sc_lv<20> > grp_dut_rank_fu_449_S_address1;
    sc_signal< sc_logic > grp_dut_rank_fu_449_S_ce1;
    sc_signal< sc_lv<20> > grp_dut_rank_fu_449_U_address0;
    sc_signal< sc_logic > grp_dut_rank_fu_449_U_ce0;
    sc_signal< sc_lv<8> > test_reg_265;
    sc_signal< sc_lv<8> > i_reg_276;
    sc_signal< sc_lv<3> > j_reg_287;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_502;
    sc_signal< sc_lv<10> > i_0_i_reg_298;
    sc_signal< sc_lv<1> > exitcond10_fu_654_p2;
    sc_signal< sc_lv<10> > i1_reg_309;
    sc_signal< sc_lv<20> > phi_mul_reg_320;
    sc_signal< sc_lv<10> > j2_reg_332;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_528;
    sc_signal< sc_lv<1> > exitcond3_fu_677_p2;
    sc_signal< sc_lv<5> > i3_reg_343;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_23;
    sc_signal< bool > ap_sig_541;
    sc_signal< sc_lv<12> > phi_mul1_reg_354;
    sc_signal< sc_lv<8> > j4_reg_366;
    sc_signal< sc_lv<1> > exitcond5_fu_725_p2;
    sc_signal< sc_lv<5> > i5_reg_377;
    sc_signal< sc_lv<14> > phi_mul3_reg_388;
    sc_signal< sc_lv<10> > j6_reg_400;
    sc_signal< sc_lv<1> > exitcond7_fu_770_p2;
    sc_signal< sc_lv<10> > i7_reg_411;
    sc_signal< sc_logic > ap_reg_grp_dut_svd_pairs_fu_422_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_586;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_593;
    sc_signal< sc_logic > ap_reg_grp_dut_cov_fu_430_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_602;
    sc_signal< sc_logic > ap_sig_cseq_ST_st18_fsm_17;
    sc_signal< bool > ap_sig_609;
    sc_signal< sc_logic > ap_reg_grp_dut_normalize_fu_436_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_620;
    sc_signal< sc_logic > ap_reg_grp_dut_matrix_multiply_alt2_fu_442_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st23_fsm_22;
    sc_signal< bool > ap_sig_629;
    sc_signal< sc_logic > ap_reg_grp_dut_rank_fu_449_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st21_fsm_20;
    sc_signal< bool > ap_sig_638;
    sc_signal< sc_logic > ap_sig_cseq_ST_st22_fsm_21;
    sc_signal< bool > ap_sig_645;
    sc_signal< sc_lv<64> > tmp_191_cast_fu_645_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_666_p1;
    sc_signal< sc_lv<64> > tmp_193_cast_fu_711_p1;
    sc_signal< sc_lv<64> > tmp_195_cast_fu_759_p1;
    sc_signal< sc_lv<64> > tmp_198_cast_fu_804_p1;
    sc_signal< sc_lv<64> > tmp_149_fu_821_p1;
    sc_signal< sc_lv<32> > i_0_i_cast8_fu_649_p1;
    sc_signal< sc_lv<2> > tmp_fu_512_p1;
    sc_signal< sc_lv<5> > Lo_assign_fu_516_p3;
    sc_signal< sc_lv<5> > Hi_assign_fu_524_p2;
    sc_signal< sc_lv<6> > tmp_165_fu_536_p1;
    sc_signal< sc_lv<6> > tmp_166_fu_540_p1;
    sc_signal< sc_lv<1> > tmp_164_fu_530_p2;
    sc_signal< sc_lv<6> > tmp_168_fu_553_p2;
    sc_signal< sc_lv<6> > tmp_170_fu_565_p2;
    sc_signal< sc_lv<32> > tmp_167_fu_544_p4;
    sc_signal< sc_lv<6> > tmp_169_fu_559_p2;
    sc_signal< sc_lv<6> > tmp_172_fu_571_p3;
    sc_signal< sc_lv<6> > tmp_174_fu_586_p3;
    sc_signal< sc_lv<6> > tmp_175_fu_594_p2;
    sc_signal< sc_lv<32> > tmp_173_fu_579_p3;
    sc_signal< sc_lv<32> > tmp_176_fu_600_p1;
    sc_signal< sc_lv<32> > tmp_177_fu_604_p1;
    sc_signal< sc_lv<32> > tmp_178_fu_608_p2;
    sc_signal< sc_lv<32> > tmp_179_fu_614_p2;
    sc_signal< sc_lv<10> > j_cast_fu_496_p1;
    sc_signal< sc_lv<10> > tmp_180_fu_634_p1;
    sc_signal< sc_lv<18> > tmp_180_fu_634_p2;
    sc_signal< sc_lv<20> > tmp_146_cast_fu_701_p1;
    sc_signal< sc_lv<20> > tmp_171_fu_705_p2;
    sc_signal< sc_lv<12> > tmp_148_cast_fu_749_p1;
    sc_signal< sc_lv<12> > tmp_182_fu_753_p2;
    sc_signal< sc_lv<14> > tmp_150_cast_fu_794_p1;
    sc_signal< sc_lv<14> > tmp_185_fu_798_p2;
    sc_signal< sc_lv<32> > ap_NS_fsm;
    sc_signal< sc_lv<18> > tmp_180_fu_634_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<32> ap_ST_st1_fsm_0;
    static const sc_lv<32> ap_ST_st2_fsm_1;
    static const sc_lv<32> ap_ST_st3_fsm_2;
    static const sc_lv<32> ap_ST_st4_fsm_3;
    static const sc_lv<32> ap_ST_st5_fsm_4;
    static const sc_lv<32> ap_ST_st6_fsm_5;
    static const sc_lv<32> ap_ST_st7_fsm_6;
    static const sc_lv<32> ap_ST_st8_fsm_7;
    static const sc_lv<32> ap_ST_st9_fsm_8;
    static const sc_lv<32> ap_ST_st10_fsm_9;
    static const sc_lv<32> ap_ST_st11_fsm_10;
    static const sc_lv<32> ap_ST_st12_fsm_11;
    static const sc_lv<32> ap_ST_st13_fsm_12;
    static const sc_lv<32> ap_ST_st14_fsm_13;
    static const sc_lv<32> ap_ST_st15_fsm_14;
    static const sc_lv<32> ap_ST_st16_fsm_15;
    static const sc_lv<32> ap_ST_st17_fsm_16;
    static const sc_lv<32> ap_ST_st18_fsm_17;
    static const sc_lv<32> ap_ST_st19_fsm_18;
    static const sc_lv<32> ap_ST_st20_fsm_19;
    static const sc_lv<32> ap_ST_st21_fsm_20;
    static const sc_lv<32> ap_ST_st22_fsm_21;
    static const sc_lv<32> ap_ST_st23_fsm_22;
    static const sc_lv<32> ap_ST_st24_fsm_23;
    static const sc_lv<32> ap_ST_st25_fsm_24;
    static const sc_lv<32> ap_ST_st26_fsm_25;
    static const sc_lv<32> ap_ST_st27_fsm_26;
    static const sc_lv<32> ap_ST_st28_fsm_27;
    static const sc_lv<32> ap_ST_st29_fsm_28;
    static const sc_lv<32> ap_ST_st30_fsm_29;
    static const sc_lv<32> ap_ST_st31_fsm_30;
    static const sc_lv<32> ap_ST_st32_fsm_31;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<8> ap_const_lv8_C8;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_C4;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<5> ap_const_lv5_7;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<18> ap_const_lv18_C8;
    static const sc_lv<10> ap_const_lv10_310;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<20> ap_const_lv20_310;
    static const sc_lv<12> ap_const_lv12_C8;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<14> ap_const_lv14_310;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_fu_524_p2();
    void thread_Lo_assign_fu_516_p3();
    void thread_S_address0();
    void thread_S_address1();
    void thread_S_ce0();
    void thread_S_ce1();
    void thread_S_d0();
    void thread_S_we0();
    void thread_U_address0();
    void thread_U_ce0();
    void thread_U_ce1();
    void thread_U_d0();
    void thread_U_we0();
    void thread_V_address0();
    void thread_V_ce0();
    void thread_V_ce1();
    void thread_V_d0();
    void thread_V_we0();
    void thread_XXT_address0();
    void thread_XXT_ce0();
    void thread_XXT_ce1();
    void thread_XXT_d0();
    void thread_XXT_we0();
    void thread_X_address0();
    void thread_X_ce0();
    void thread_X_d0();
    void thread_X_we0();
    void thread_Y_assign_address0();
    void thread_Y_assign_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_105();
    void thread_ap_sig_116();
    void thread_ap_sig_131();
    void thread_ap_sig_147();
    void thread_ap_sig_156();
    void thread_ap_sig_165();
    void thread_ap_sig_174();
    void thread_ap_sig_185();
    void thread_ap_sig_205();
    void thread_ap_sig_216();
    void thread_ap_sig_230();
    void thread_ap_sig_241();
    void thread_ap_sig_255();
    void thread_ap_sig_47();
    void thread_ap_sig_502();
    void thread_ap_sig_528();
    void thread_ap_sig_541();
    void thread_ap_sig_586();
    void thread_ap_sig_593();
    void thread_ap_sig_602();
    void thread_ap_sig_609();
    void thread_ap_sig_620();
    void thread_ap_sig_629();
    void thread_ap_sig_638();
    void thread_ap_sig_645();
    void thread_ap_sig_68();
    void thread_ap_sig_80();
    void thread_ap_sig_87();
    void thread_ap_sig_95();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st18_fsm_17();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st21_fsm_20();
    void thread_ap_sig_cseq_ST_st22_fsm_21();
    void thread_ap_sig_cseq_ST_st23_fsm_22();
    void thread_ap_sig_cseq_ST_st24_fsm_23();
    void thread_ap_sig_cseq_ST_st25_fsm_24();
    void thread_ap_sig_cseq_ST_st26_fsm_25();
    void thread_ap_sig_cseq_ST_st27_fsm_26();
    void thread_ap_sig_cseq_ST_st28_fsm_27();
    void thread_ap_sig_cseq_ST_st29_fsm_28();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st30_fsm_29();
    void thread_ap_sig_cseq_ST_st31_fsm_30();
    void thread_ap_sig_cseq_ST_st32_fsm_31();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_exitcond10_fu_654_p2();
    void thread_exitcond1_fu_460_p2();
    void thread_exitcond2_fu_476_p2();
    void thread_exitcond3_fu_677_p2();
    void thread_exitcond4_fu_500_p2();
    void thread_exitcond5_fu_725_p2();
    void thread_exitcond6_fu_689_p2();
    void thread_exitcond7_fu_770_p2();
    void thread_exitcond8_fu_737_p2();
    void thread_exitcond9_fu_782_p2();
    void thread_exitcond_fu_809_p2();
    void thread_grp_dut_cov_fu_430_ap_start();
    void thread_grp_dut_matrix_multiply_alt2_fu_442_ap_start();
    void thread_grp_dut_normalize_fu_436_ap_start();
    void thread_grp_dut_rank_fu_449_ap_start();
    void thread_grp_dut_svd_pairs_fu_422_ap_start();
    void thread_i_0_i_cast8_fu_649_p1();
    void thread_i_1_fu_660_p2();
    void thread_i_2_fu_482_p2();
    void thread_i_3_fu_683_p2();
    void thread_i_4_fu_731_p2();
    void thread_i_5_fu_815_p2();
    void thread_i_6_fu_776_p2();
    void thread_j_1_fu_506_p2();
    void thread_j_2_fu_695_p2();
    void thread_j_3_fu_743_p2();
    void thread_j_4_fu_788_p2();
    void thread_j_cast_fu_496_p1();
    void thread_mean_address0();
    void thread_mean_ce0();
    void thread_next_mul2_fu_719_p2();
    void thread_next_mul4_fu_764_p2();
    void thread_next_mul_fu_671_p2();
    void thread_p_Result_s_fu_620_p2();
    void thread_pca_sorted_idx_address0();
    void thread_pca_sorted_idx_ce0();
    void thread_pca_sorted_idx_ce1();
    void thread_pca_sorted_idx_d0();
    void thread_pca_sorted_idx_we0();
    void thread_strm_in_V_V_blk_n();
    void thread_strm_in_V_V_read();
    void thread_strm_out_V_blk_n();
    void thread_strm_out_V_din();
    void thread_strm_out_V_write();
    void thread_test_1_fu_466_p2();
    void thread_tmp_140_fu_488_p3();
    void thread_tmp_143_fu_626_p2();
    void thread_tmp_146_cast_fu_701_p1();
    void thread_tmp_148_cast_fu_749_p1();
    void thread_tmp_149_fu_821_p1();
    void thread_tmp_150_cast_fu_794_p1();
    void thread_tmp_164_fu_530_p2();
    void thread_tmp_165_fu_536_p1();
    void thread_tmp_166_fu_540_p1();
    void thread_tmp_167_fu_544_p4();
    void thread_tmp_168_fu_553_p2();
    void thread_tmp_169_fu_559_p2();
    void thread_tmp_170_fu_565_p2();
    void thread_tmp_171_fu_705_p2();
    void thread_tmp_172_fu_571_p3();
    void thread_tmp_173_fu_579_p3();
    void thread_tmp_174_fu_586_p3();
    void thread_tmp_175_fu_594_p2();
    void thread_tmp_176_fu_600_p1();
    void thread_tmp_177_fu_604_p1();
    void thread_tmp_178_fu_608_p2();
    void thread_tmp_179_fu_614_p2();
    void thread_tmp_180_fu_634_p1();
    void thread_tmp_180_fu_634_p10();
    void thread_tmp_180_fu_634_p2();
    void thread_tmp_181_fu_640_p2();
    void thread_tmp_182_fu_753_p2();
    void thread_tmp_185_fu_798_p2();
    void thread_tmp_191_cast_fu_645_p1();
    void thread_tmp_193_cast_fu_711_p1();
    void thread_tmp_195_cast_fu_759_p1();
    void thread_tmp_198_cast_fu_804_p1();
    void thread_tmp_cast_fu_472_p1();
    void thread_tmp_fu_512_p1();
    void thread_tmp_s_fu_666_p1();
    void thread_tsf_mat_address0();
    void thread_tsf_mat_ce0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
