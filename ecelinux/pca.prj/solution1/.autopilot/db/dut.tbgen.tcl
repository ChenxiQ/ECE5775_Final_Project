set C_TypeInfoList {{ 
"dut" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_in": [[], {"reference": "0"}] }, {"strm_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"1"]}}],
"1": ["hls", ""]
}}
set moduleName dut
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm_in_V float 32 regular {fifo 0 volatile }  }
	{ strm_out_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_in.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_out_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_out.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_V_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_V_read sc_out sc_logic 1 signal 0 } 
	{ strm_out_V_din sc_out sc_lv 32 signal 1 } 
	{ strm_out_V_full_n sc_in sc_logic 1 signal 1 } 
	{ strm_out_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V", "role": "dout" }} , 
 	{ "name": "strm_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V", "role": "read" }} , 
 	{ "name": "strm_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V", "role": "din" }} , 
 	{ "name": "strm_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V", "role": "full_n" }} , 
 	{ "name": "strm_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"], "CDFG" : "dut", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_svd_alt_fu_213"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.XXT_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "49", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127"], "CDFG" : "dut_svd_alt", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "S", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "U", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "V", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.diag_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.diag_2_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_block_buffer_0_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_block_buffer_0_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_block_buffer_1_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_block_buffer_1_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.U_block_buffer_0_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.U_block_buffer_0_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.U_block_buffer_1_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.U_block_buffer_1_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.V_block_buffer_0_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.V_block_buffer_0_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.V_block_buffer_1_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.V_block_buffer_1_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_r_buffer_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_r_buffer_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_c_buffer_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.S_c_buffer_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.U_c_buffer_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.U_c_buffer_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.V_c_buffer_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.V_c_buffer_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.J2x2_0_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.J2x2_0_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.J2x2_1_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.J2x2_1_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.K2x2_0_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.K2x2_0_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.K2x2_1_0_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.K2x2_1_1_U", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231", "Parent" : "5", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "0",
		"Port" : [
		{"Name" : "A_M_real", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_M_imag", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_faddfsub_32ns_32ns_32_5_full_dsp_U2", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fadd_32ns_32ns_32_5_full_dsp_U3", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U4", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U5", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U6", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U7", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fmul_32ns_32ns_32_4_max_dsp_U8", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fdiv_32ns_32ns_32_16_U9", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_fdiv_32ns_32ns_32_16_U10", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_frsqrt_32ns_32ns_32_11_full_dsp_U11", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2231.dut_frsqrt_32ns_32ns_32_11_full_dsp_U12", "Parent" : "36", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237", "Parent" : "5", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "0",
		"Port" : [
		{"Name" : "A_M_real", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_M_imag", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_faddfsub_32ns_32ns_32_5_full_dsp_U2", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fadd_32ns_32ns_32_5_full_dsp_U3", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U4", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U5", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U6", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U7", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fmul_32ns_32ns_32_4_max_dsp_U8", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fdiv_32ns_32ns_32_16_U9", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_fdiv_32ns_32ns_32_16_U10", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_frsqrt_32ns_32ns_32_11_full_dsp_U11", "Parent" : "49", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.grp_dut_calc_angle_float_float_s_fu_2237.dut_frsqrt_32ns_32ns_32_11_full_dsp_U12", "Parent" : "49", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_faddfsub_32ns_32ns_32_5_full_dsp_U15", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U16", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U17", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_faddfsub_32ns_32ns_32_5_full_dsp_U18", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U19", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U20", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U21", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U22", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U23", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U25", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U26", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U27", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U28", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U29", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U30", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U31", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U32", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U33", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U34", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U35", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fadd_32ns_32ns_32_5_full_dsp_U36", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U37", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U38", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U39", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U40", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U41", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U42", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U43", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U44", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U45", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U46", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U47", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U48", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U49", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U50", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U51", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U52", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U53", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U54", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U55", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U56", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U57", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U58", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U59", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U60", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U61", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U62", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U63", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U64", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U65", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U66", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U67", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U68", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U69", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_fmul_32ns_32ns_32_4_max_dsp_U70", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_sitofp_32ns_32_6_U71", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mac_muladd_10ns_11ns_10ns_20_1_U72", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mul_mul_11ns_21s_21_1_U73", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mul_mul_11ns_21s_21_1_U74", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mul_mul_11ns_21s_21_1_U75", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mul_mul_11ns_21s_21_1_U76", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mac_muladd_11ns_21s_10ns_21_1_U77", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mac_muladd_11ns_21s_10ns_21_1_U78", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mac_muladd_11ns_21s_10ns_21_1_U79", "Parent" : "5", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_alt_fu_213.dut_mac_muladd_11ns_21s_10ns_21_1_U80", "Parent" : "5", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8690861572", "Max" : "8690861572"}
	, {"Name" : "Interval", "Min" : "100926981", "Max" : "100926981"}
]}

set Spec2ImplPortList { 
	strm_in_V { ap_fifo {  { strm_in_V_dout fifo_data 0 32 }  { strm_in_V_empty_n fifo_status 0 1 }  { strm_in_V_read fifo_update 1 1 } } }
	strm_out_V { ap_fifo {  { strm_out_V_din fifo_data 1 32 }  { strm_out_V_full_n fifo_status 0 1 }  { strm_out_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V { fifo_read 784 no_conditional }
	strm_out_V { fifo_write 1568 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
