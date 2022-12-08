#include "dut_calc_angle_float_float_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void dut_calc_angle_float_float_s::thread_ap_reg_phiprechg_cosThetaAdiv2_write_assign_reg_56pp0_it117() {
    ap_reg_phiprechg_cosThetaAdiv2_write_assign_reg_56pp0_it117 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
}

void dut_calc_angle_float_float_s::thread_ap_reg_phiprechg_sinThetaAdiv2_write_assign_reg_67pp0_it117() {
    ap_reg_phiprechg_sinThetaAdiv2_write_assign_reg_67pp0_it117 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
}

void dut_calc_angle_float_float_s::thread_ap_reg_phiprechg_tanThetaAdiv_reg_46pp0_it77() {
    ap_reg_phiprechg_tanThetaAdiv_reg_46pp0_it77 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
}

void dut_calc_angle_float_float_s::thread_ap_return_0() {
    ap_return_0 = cosThetaAdiv2_write_assign_phi_fu_59_p6.read();
}

void dut_calc_angle_float_float_s::thread_ap_return_1() {
    ap_return_1 = sinThetaAdiv2_write_assign_phi_fu_71_p6.read();
}

void dut_calc_angle_float_float_s::thread_ap_sig_1172() {
    ap_sig_1172 = (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan_reg_421_pp0_iter56.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan5_reg_425_pp0_iter56.read()));
}

void dut_calc_angle_float_float_s::thread_ap_sig_1281() {
    ap_sig_1281 = (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan_reg_421_pp0_iter116.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan5_reg_425_pp0_iter116.read()));
}

void dut_calc_angle_float_float_s::thread_ap_sig_1333() {
    ap_sig_1333 = (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan_reg_421_pp0_iter61.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan5_reg_425_pp0_iter61.read()));
}

void dut_calc_angle_float_float_s::thread_cosThetaA_int_to_int_fu_327_p1() {
    cosThetaA_int_to_int_fu_327_p1 = cosThetaA_int_reg_512.read();
}

void dut_calc_angle_float_float_s::thread_cosThetaAdiv2_write_assign_phi_fu_59_p6() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan_reg_421_pp0_iter117.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan5_reg_425_pp0_iter117.read()))) {
        cosThetaAdiv2_write_assign_phi_fu_59_p6 = ap_reg_ppstg_cosThetaAdiv2_int_reg_546_pp0_iter117.read();
    } else {
        cosThetaAdiv2_write_assign_phi_fu_59_p6 = ap_reg_phiprechg_cosThetaAdiv2_write_assign_reg_56pp0_it118.read();
    }
}

void dut_calc_angle_float_float_s::thread_demorgan5_fu_258_p2() {
    demorgan5_fu_258_p2 = (ult3_fu_246_p2.read() | notrhs_i1_fu_252_p2.read());
}

void dut_calc_angle_float_float_s::thread_demorgan_fu_234_p2() {
    demorgan_fu_234_p2 = (ult_fu_222_p2.read() | notrhs_i_fu_228_p2.read());
}

void dut_calc_angle_float_float_s::thread_grp_fu_100_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_100_ce = ap_const_logic_1;
    } else {
        grp_fu_100_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_100_p0() {
    grp_fu_100_p0 = (!tmp_19_fu_313_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_19_fu_313_p2.read()[0].to_bool())? ap_const_lv32_3F800000: ap_const_lv32_BF800000);
}

void dut_calc_angle_float_float_s::thread_grp_fu_104_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_104_ce = ap_const_logic_1;
    } else {
        grp_fu_104_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_108_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_108_ce = ap_const_logic_1;
    } else {
        grp_fu_108_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_114_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_114_ce = ap_const_logic_1;
    } else {
        grp_fu_114_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_120_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_120_ce = ap_const_logic_1;
    } else {
        grp_fu_120_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_126_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_126_ce = ap_const_logic_1;
    } else {
        grp_fu_126_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_131_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_131_ce = ap_const_logic_1;
    } else {
        grp_fu_131_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_131_p0() {
    if (ap_sig_1333.read()) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_23_reg_521_pp0_iter61.read())) {
            grp_fu_131_p0 = reg_167.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_23_reg_521_pp0_iter61.read())) {
            grp_fu_131_p0 = ap_reg_ppstg_sinThetaA_int_reg_525_pp0_iter61.read();
        } else {
            grp_fu_131_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        grp_fu_131_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_131_p1() {
    if (ap_sig_1333.read()) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_23_reg_521_pp0_iter61.read())) {
            grp_fu_131_p1 = ap_reg_ppstg_sinThetaA_int_reg_525_pp0_iter61.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_23_reg_521_pp0_iter61.read())) {
            grp_fu_131_p1 = reg_167.read();
        } else {
            grp_fu_131_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        grp_fu_131_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_135_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_135_ce = ap_const_logic_1;
    } else {
        grp_fu_135_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_140_opcode() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_0, demorgan_fu_234_p2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, demorgan5_fu_258_p2.read())) || 
         !esl_seteq<1,1,1>(ap_const_lv1_0, demorgan_fu_234_p2.read()))) {
        grp_fu_140_opcode = ap_const_lv5_4;
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_0, demorgan_fu_234_p2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, demorgan5_fu_258_p2.read()))) {
        grp_fu_140_opcode = ap_const_lv5_3;
    } else {
        grp_fu_140_opcode =  (sc_lv<5>) ("XXXXX");
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_140_p0() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_0, demorgan_fu_234_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, demorgan5_fu_258_p2.read()))) {
        grp_fu_140_p0 = A_i.read();
    } else if (((esl_seteq<1,1,1>(ap_const_lv1_0, demorgan_fu_234_p2.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, demorgan5_fu_258_p2.read())) || 
                !esl_seteq<1,1,1>(ap_const_lv1_0, demorgan_fu_234_p2.read()))) {
        grp_fu_140_p0 = A_r.read();
    } else {
        grp_fu_140_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_152_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_152_ce = ap_const_logic_1;
    } else {
        grp_fu_152_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_157_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_157_ce = ap_const_logic_1;
    } else {
        grp_fu_157_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_162_p2() {
    grp_fu_162_p2 = (!loc_V_fu_183_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(loc_V_fu_183_p4.read() != ap_const_lv8_FF);
}

void dut_calc_angle_float_float_s::thread_grp_fu_80_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_80_ce = ap_const_logic_1;
    } else {
        grp_fu_80_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_85_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_85_ce = ap_const_logic_1;
    } else {
        grp_fu_85_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_85_opcode() {
    if (ap_sig_1172.read()) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_23_fu_362_p2.read())) {
            grp_fu_85_opcode = ap_const_lv2_1;
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_23_fu_362_p2.read())) {
            grp_fu_85_opcode = ap_const_lv2_0;
        } else {
            grp_fu_85_opcode =  (sc_lv<2>) ("XX");
        }
    } else {
        grp_fu_85_opcode =  (sc_lv<2>) ("XX");
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_85_p0() {
    if (ap_sig_1172.read()) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_23_fu_362_p2.read())) {
            grp_fu_85_p0 = ap_const_lv32_3F800000;
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_23_fu_362_p2.read())) {
            grp_fu_85_p0 = cosThetaA_int_reg_512.read();
        } else {
            grp_fu_85_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        grp_fu_85_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_85_p1() {
    if (ap_sig_1172.read()) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_23_fu_362_p2.read())) {
            grp_fu_85_p1 = cosThetaA_int_reg_512.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_23_fu_362_p2.read())) {
            grp_fu_85_p1 = ap_const_lv32_3F800000;
        } else {
            grp_fu_85_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        grp_fu_85_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_91_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_91_ce = ap_const_logic_1;
    } else {
        grp_fu_91_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_grp_fu_96_ce() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_ce.read())) {
        grp_fu_96_ce = ap_const_logic_1;
    } else {
        grp_fu_96_ce = ap_const_logic_0;
    }
}

void dut_calc_angle_float_float_s::thread_lhs_V_cast_fu_208_p1() {
    lhs_V_cast_fu_208_p1 = esl_zext<9,8>(loc_V_2_fu_198_p4.read());
}

void dut_calc_angle_float_float_s::thread_loc_V_2_fu_198_p4() {
    loc_V_2_fu_198_p4 = p_Val2_7_fu_194_p1.read().range(30, 23);
}

void dut_calc_angle_float_float_s::thread_loc_V_fu_183_p4() {
    loc_V_fu_183_p4 = p_Val2_s_fu_179_p1.read().range(30, 23);
}

void dut_calc_angle_float_float_s::thread_notlhs5_fu_278_p2() {
    notlhs5_fu_278_p2 = (!loc_V_2_fu_198_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(loc_V_2_fu_198_p4.read() != ap_const_lv8_FF);
}

void dut_calc_angle_float_float_s::thread_notlhs9_fu_344_p2() {
    notlhs9_fu_344_p2 = (!tmp_20_fu_330_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_20_fu_330_p4.read() != ap_const_lv8_FF);
}

void dut_calc_angle_float_float_s::thread_notrhs1_fu_350_p2() {
    notrhs1_fu_350_p2 = (!tmp_26_fu_340_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_26_fu_340_p1.read() == ap_const_lv23_0);
}

void dut_calc_angle_float_float_s::thread_notrhs6_fu_284_p2() {
    notrhs6_fu_284_p2 = (!tmp_24_fu_274_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_24_fu_274_p1.read() == ap_const_lv23_0);
}

void dut_calc_angle_float_float_s::thread_notrhs8_fu_268_p2() {
    notrhs8_fu_268_p2 = (!tmp_25_fu_264_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_25_fu_264_p1.read() == ap_const_lv23_0);
}

void dut_calc_angle_float_float_s::thread_notrhs_fu_294_p2() {
    notrhs_fu_294_p2 = (!tmp_fu_290_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_fu_290_p1.read() == ap_const_lv23_0);
}

void dut_calc_angle_float_float_s::thread_notrhs_i1_fu_252_p2() {
    notrhs_i1_fu_252_p2 = (!loc_V_fu_183_p4.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(loc_V_fu_183_p4.read() == ap_const_lv8_0);
}

void dut_calc_angle_float_float_s::thread_notrhs_i_fu_228_p2() {
    notrhs_i_fu_228_p2 = (!loc_V_2_fu_198_p4.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(loc_V_2_fu_198_p4.read() == ap_const_lv8_0);
}

void dut_calc_angle_float_float_s::thread_p_1_fu_392_p3() {
    p_1_fu_392_p3 = (!ap_reg_ppstg_tmp_13_reg_474_pp0_iter116.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_tmp_13_reg_474_pp0_iter116.read()[0].to_bool())? ap_const_lv32_3F800000: ap_const_lv32_0);
}

void dut_calc_angle_float_float_s::thread_p_Val2_7_fu_194_p1() {
    p_Val2_7_fu_194_p1 = A_i.read();
}

void dut_calc_angle_float_float_s::thread_p_Val2_s_fu_179_p1() {
    p_Val2_s_fu_179_p1 = A_r.read();
}

void dut_calc_angle_float_float_s::thread_p_s_fu_385_p3() {
    p_s_fu_385_p3 = (!ap_reg_ppstg_tmp_13_reg_474_pp0_iter116.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_tmp_13_reg_474_pp0_iter116.read()[0].to_bool())? ap_const_lv32_0: ap_const_lv32_3F800000);
}

void dut_calc_angle_float_float_s::thread_r_V_1_fu_240_p2() {
    r_V_1_fu_240_p2 = (!tmp_i_cast_fu_218_p1.read().is_01() || !ap_const_lv9_18.is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_i_cast_fu_218_p1.read()) + sc_biguint<9>(ap_const_lv9_18));
}

void dut_calc_angle_float_float_s::thread_r_V_fu_212_p2() {
    r_V_fu_212_p2 = (!lhs_V_cast_fu_208_p1.read().is_01() || !ap_const_lv9_18.is_01())? sc_lv<9>(): (sc_biguint<9>(lhs_V_cast_fu_208_p1.read()) + sc_biguint<9>(ap_const_lv9_18));
}

void dut_calc_angle_float_float_s::thread_sinThetaAdiv2_write_assign_phi_fu_71_p6() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan_reg_421_pp0_iter117.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_demorgan5_reg_425_pp0_iter117.read()))) {
        sinThetaAdiv2_write_assign_phi_fu_71_p6 = grp_fu_114_p2.read();
    } else {
        sinThetaAdiv2_write_assign_phi_fu_71_p6 = ap_reg_phiprechg_sinThetaAdiv2_write_assign_reg_67pp0_it118.read();
    }
}

void dut_calc_angle_float_float_s::thread_storemerge1_fu_377_p3() {
    storemerge1_fu_377_p3 = (!tmp_16_fu_372_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_16_fu_372_p2.read()[0].to_bool())? ap_const_lv32_BF3504F3: ap_const_lv32_3F3504F3);
}

void dut_calc_angle_float_float_s::thread_tmp_11_fu_300_p2() {
    tmp_11_fu_300_p2 = (notrhs_reg_464.read() | notlhs_reg_459.read());
}

void dut_calc_angle_float_float_s::thread_tmp_13_fu_304_p2() {
    tmp_13_fu_304_p2 = (tmp_11_fu_300_p2.read() & tmp_12_reg_469.read());
}

void dut_calc_angle_float_float_s::thread_tmp_14_fu_368_p2() {
    tmp_14_fu_368_p2 = (ap_reg_ppstg_notrhs6_reg_449_pp0_iter116.read() | ap_reg_ppstg_notlhs5_reg_444_pp0_iter116.read());
}

void dut_calc_angle_float_float_s::thread_tmp_16_fu_372_p2() {
    tmp_16_fu_372_p2 = (tmp_14_fu_368_p2.read() & ap_reg_ppstg_tmp_15_reg_454_pp0_iter116.read());
}

void dut_calc_angle_float_float_s::thread_tmp_17_fu_309_p2() {
    tmp_17_fu_309_p2 = (ap_reg_ppstg_notrhs8_reg_434_pp0_iter52.read() | ap_reg_ppstg_notlhs7_reg_429_pp0_iter52.read());
}

void dut_calc_angle_float_float_s::thread_tmp_19_fu_313_p2() {
    tmp_19_fu_313_p2 = (tmp_17_fu_309_p2.read() & ap_reg_ppstg_tmp_18_reg_439_pp0_iter52.read());
}

void dut_calc_angle_float_float_s::thread_tmp_20_fu_330_p4() {
    tmp_20_fu_330_p4 = cosThetaA_int_to_int_fu_327_p1.read().range(30, 23);
}

void dut_calc_angle_float_float_s::thread_tmp_21_fu_356_p2() {
    tmp_21_fu_356_p2 = (notrhs1_fu_350_p2.read() | notlhs9_fu_344_p2.read());
}

void dut_calc_angle_float_float_s::thread_tmp_23_fu_362_p2() {
    tmp_23_fu_362_p2 = (tmp_21_fu_356_p2.read() & tmp_22_fu_147_p2.read());
}

void dut_calc_angle_float_float_s::thread_tmp_24_fu_274_p1() {
    tmp_24_fu_274_p1 = p_Val2_7_fu_194_p1.read().range(23-1, 0);
}

void dut_calc_angle_float_float_s::thread_tmp_25_fu_264_p1() {
    tmp_25_fu_264_p1 = p_Val2_s_fu_179_p1.read().range(23-1, 0);
}

void dut_calc_angle_float_float_s::thread_tmp_26_fu_340_p1() {
    tmp_26_fu_340_p1 = cosThetaA_int_to_int_fu_327_p1.read().range(23-1, 0);
}

void dut_calc_angle_float_float_s::thread_tmp_fu_290_p1() {
    tmp_fu_290_p1 = p_Val2_s_fu_179_p1.read().range(23-1, 0);
}

void dut_calc_angle_float_float_s::thread_tmp_i_cast_fu_218_p1() {
    tmp_i_cast_fu_218_p1 = esl_zext<9,8>(loc_V_fu_183_p4.read());
}

void dut_calc_angle_float_float_s::thread_ult3_fu_246_p2() {
    ult3_fu_246_p2 = (!r_V_1_fu_240_p2.read().is_01() || !lhs_V_cast_fu_208_p1.read().is_01())? sc_lv<1>(): (sc_biguint<9>(r_V_1_fu_240_p2.read()) < sc_biguint<9>(lhs_V_cast_fu_208_p1.read()));
}

void dut_calc_angle_float_float_s::thread_ult_fu_222_p2() {
    ult_fu_222_p2 = (!r_V_fu_212_p2.read().is_01() || !tmp_i_cast_fu_218_p1.read().is_01())? sc_lv<1>(): (sc_biguint<9>(r_V_fu_212_p2.read()) < sc_biguint<9>(tmp_i_cast_fu_218_p1.read()));
}

}

