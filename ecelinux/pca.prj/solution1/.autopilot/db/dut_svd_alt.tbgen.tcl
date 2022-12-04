set moduleName dut_svd_alt
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_svd_alt}
set C_modelType { void 0 }
set C_modelArgList {
	{ A float 32 regular {array 614656 { 1 3 } 3 1 }  }
	{ S float 32 regular {array 614656 { 2 2 } 3 1 }  }
	{ U float 32 regular {array 614656 { 2 2 } 3 1 }  }
	{ V float 32 regular {array 614656 { 2 2 } 3 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "U", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_address0 sc_out sc_lv 20 signal 0 } 
	{ A_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_q0 sc_in sc_lv 32 signal 0 } 
	{ S_address0 sc_out sc_lv 20 signal 1 } 
	{ S_ce0 sc_out sc_logic 1 signal 1 } 
	{ S_we0 sc_out sc_logic 1 signal 1 } 
	{ S_d0 sc_out sc_lv 32 signal 1 } 
	{ S_q0 sc_in sc_lv 32 signal 1 } 
	{ S_address1 sc_out sc_lv 20 signal 1 } 
	{ S_ce1 sc_out sc_logic 1 signal 1 } 
	{ S_we1 sc_out sc_logic 1 signal 1 } 
	{ S_d1 sc_out sc_lv 32 signal 1 } 
	{ S_q1 sc_in sc_lv 32 signal 1 } 
	{ U_address0 sc_out sc_lv 20 signal 2 } 
	{ U_ce0 sc_out sc_logic 1 signal 2 } 
	{ U_we0 sc_out sc_logic 1 signal 2 } 
	{ U_d0 sc_out sc_lv 32 signal 2 } 
	{ U_q0 sc_in sc_lv 32 signal 2 } 
	{ U_address1 sc_out sc_lv 20 signal 2 } 
	{ U_ce1 sc_out sc_logic 1 signal 2 } 
	{ U_we1 sc_out sc_logic 1 signal 2 } 
	{ U_d1 sc_out sc_lv 32 signal 2 } 
	{ U_q1 sc_in sc_lv 32 signal 2 } 
	{ V_address0 sc_out sc_lv 20 signal 3 } 
	{ V_ce0 sc_out sc_logic 1 signal 3 } 
	{ V_we0 sc_out sc_logic 1 signal 3 } 
	{ V_d0 sc_out sc_lv 32 signal 3 } 
	{ V_q0 sc_in sc_lv 32 signal 3 } 
	{ V_address1 sc_out sc_lv 20 signal 3 } 
	{ V_ce1 sc_out sc_logic 1 signal 3 } 
	{ V_we1 sc_out sc_logic 1 signal 3 } 
	{ V_d1 sc_out sc_lv 32 signal 3 } 
	{ V_q1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "S_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "S", "role": "address0" }} , 
 	{ "name": "S_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce0" }} , 
 	{ "name": "S_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "we0" }} , 
 	{ "name": "S_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "d0" }} , 
 	{ "name": "S_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q0" }} , 
 	{ "name": "S_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "S", "role": "address1" }} , 
 	{ "name": "S_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce1" }} , 
 	{ "name": "S_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "we1" }} , 
 	{ "name": "S_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "d1" }} , 
 	{ "name": "S_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q1" }} , 
 	{ "name": "U_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "U", "role": "address0" }} , 
 	{ "name": "U_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "ce0" }} , 
 	{ "name": "U_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "we0" }} , 
 	{ "name": "U_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "d0" }} , 
 	{ "name": "U_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "q0" }} , 
 	{ "name": "U_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "U", "role": "address1" }} , 
 	{ "name": "U_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "ce1" }} , 
 	{ "name": "U_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "we1" }} , 
 	{ "name": "U_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "d1" }} , 
 	{ "name": "U_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "q1" }} , 
 	{ "name": "V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "V", "role": "address0" }} , 
 	{ "name": "V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ce0" }} , 
 	{ "name": "V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "we0" }} , 
 	{ "name": "V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "d0" }} , 
 	{ "name": "V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "q0" }} , 
 	{ "name": "V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "V", "role": "address1" }} , 
 	{ "name": "V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ce1" }} , 
 	{ "name": "V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "we1" }} , 
 	{ "name": "V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "d1" }} , 
 	{ "name": "V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "44", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122"], "CDFG" : "dut_svd_alt", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "S", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "U", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.diag_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.diag_2_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_block_buffer_0_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_block_buffer_0_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_block_buffer_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_block_buffer_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_block_buffer_0_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_block_buffer_0_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_block_buffer_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_block_buffer_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_block_buffer_0_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_block_buffer_0_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_block_buffer_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_block_buffer_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_r_buffer_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_r_buffer_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_c_buffer_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_c_buffer_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_c_buffer_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_c_buffer_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_c_buffer_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_c_buffer_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.J2x2_0_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.J2x2_0_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.J2x2_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.J2x2_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.K2x2_0_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.K2x2_0_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.K2x2_1_0_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.K2x2_1_1_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "0",
		"Port" : [
		{"Name" : "A_M_real", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_M_imag", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_faddfsub_32ns_32ns_32_5_full_dsp_U2", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fadd_32ns_32ns_32_5_full_dsp_U3", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U4", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U5", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U6", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U7", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U8", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fdiv_32ns_32ns_32_16_U9", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_fdiv_32ns_32ns_32_16_U10", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_frsqrt_32ns_32ns_32_11_full_dsp_U11", "Parent" : "31", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2231.dut_frsqrt_32ns_32ns_32_11_full_dsp_U12", "Parent" : "31", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237", "Parent" : "0", "Child" : ["45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "0",
		"Port" : [
		{"Name" : "A_M_real", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_M_imag", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_faddfsub_32ns_32ns_32_5_full_dsp_U2", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fadd_32ns_32ns_32_5_full_dsp_U3", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U4", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U5", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U6", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U7", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U8", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fdiv_32ns_32ns_32_16_U9", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_fdiv_32ns_32ns_32_16_U10", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_frsqrt_32ns_32ns_32_11_full_dsp_U11", "Parent" : "44", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_2237.dut_frsqrt_32ns_32ns_32_11_full_dsp_U12", "Parent" : "44", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_faddfsub_32ns_32ns_32_5_full_dsp_U15", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U16", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U17", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_faddfsub_32ns_32ns_32_5_full_dsp_U18", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U19", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U20", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U21", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U22", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U23", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U25", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U26", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U27", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U28", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U29", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U30", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U31", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U32", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U33", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U34", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U35", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U36", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U37", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U38", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U39", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U40", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U41", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U42", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U43", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U44", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U45", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U46", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U47", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U48", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U49", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U50", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U51", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U52", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U53", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U54", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U55", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U56", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U57", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U58", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U59", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U60", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U61", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U62", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U63", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U64", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U65", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U66", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U67", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U68", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U69", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U70", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_sitofp_32ns_32_6_U71", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mac_muladd_10ns_11ns_10ns_20_1_U72", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_21s_21_1_U73", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_21s_21_1_U74", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_21s_21_1_U75", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_21s_21_1_U76", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mac_muladd_11ns_21s_10ns_21_1_U77", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mac_muladd_11ns_21s_10ns_21_1_U78", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mac_muladd_11ns_21s_10ns_21_1_U79", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mac_muladd_11ns_21s_10ns_21_1_U80", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8684710304", "Max" : "8684710304"}
	, {"Name" : "Interval", "Min" : "94775712", "Max" : "94775712"}
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 20 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 } } }
	S { ap_memory {  { S_address0 mem_address 1 20 }  { S_ce0 mem_ce 1 1 }  { S_we0 mem_we 1 1 }  { S_d0 mem_din 1 32 }  { S_q0 mem_dout 0 32 }  { S_address1 mem_address 1 20 }  { S_ce1 mem_ce 1 1 }  { S_we1 mem_we 1 1 }  { S_d1 mem_din 1 32 }  { S_q1 mem_dout 0 32 } } }
	U { ap_memory {  { U_address0 mem_address 1 20 }  { U_ce0 mem_ce 1 1 }  { U_we0 mem_we 1 1 }  { U_d0 mem_din 1 32 }  { U_q0 mem_dout 0 32 }  { U_address1 mem_address 1 20 }  { U_ce1 mem_ce 1 1 }  { U_we1 mem_we 1 1 }  { U_d1 mem_din 1 32 }  { U_q1 mem_dout 0 32 } } }
	V { ap_memory {  { V_address0 mem_address 1 20 }  { V_ce0 mem_ce 1 1 }  { V_we0 mem_we 1 1 }  { V_d0 mem_din 1 32 }  { V_q0 mem_dout 0 32 }  { V_address1 mem_address 1 20 }  { V_ce1 mem_ce 1 1 }  { V_we1 mem_we 1 1 }  { V_d1 mem_din 1 32 }  { V_q1 mem_dout 0 32 } } }
}
