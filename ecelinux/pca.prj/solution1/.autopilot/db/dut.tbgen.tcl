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
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "19", "22", "27", "28"], "CDFG" : "dut", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : [
			{"SubInst" : "grp_dut_matmul_fu_132", "Port" : "strm_in_V"}, 
			{"SubInst" : "grp_dut_update_off_diag_r_fu_124", "Port" : "strm_in_V"}, 
			{"SubInst" : "grp_dut_calc_svd_fu_116", "Port" : "strm_in_V"}]}, 
		{"Name" : "strm_out_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : [
			{"SubInst" : "grp_dut_matmul_fu_132", "Port" : "strm_out_V"}, 
			{"SubInst" : "grp_dut_update_off_diag_r_fu_124", "Port" : "strm_out_V"}, 
			{"SubInst" : "grp_dut_calc_svd_fu_116", "Port" : "strm_out_V"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st23_fsm_9", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_calc_svd_fu_116"},
		{"State" : "ap_ST_st23_fsm_9", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_update_off_diag_r_fu_124"},
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_matmul_fu_132"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116", "Parent" : "0", "Child" : ["2", "15", "16", "17", "18"], "CDFG" : "dut_calc_svd", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "0",
		"Port" : [
		{"Name" : "A_M_real", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_M_imag", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fadd_32ns_32ns_32_5_full_dsp_U10", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_faddfsub_32ns_32ns_32_5_full_dsp_U11", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fadd_32ns_32ns_32_5_full_dsp_U12", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fmul_32ns_32ns_32_4_max_dsp_U13", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fmul_32ns_32ns_32_4_max_dsp_U14", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fmul_32ns_32ns_32_4_max_dsp_U15", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fmul_32ns_32ns_32_4_max_dsp_U16", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fmul_32ns_32ns_32_4_max_dsp_U17", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fdiv_32ns_32ns_32_16_U18", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_fdiv_32ns_32ns_32_16_U19", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_frsqrt_32ns_32ns_32_11_full_dsp_U20", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.grp_dut_calc_angle_float_float_s_fu_81.dut_frsqrt_32ns_32ns_32_11_full_dsp_U21", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.dut_faddfsub_32ns_32ns_32_5_full_dsp_U24", "Parent" : "1", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.dut_faddfsub_32ns_32ns_32_5_full_dsp_U25", "Parent" : "1", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.dut_fmul_32ns_32ns_32_4_max_dsp_U26", "Parent" : "1", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_svd_fu_116.dut_fmul_32ns_32ns_32_4_max_dsp_U27", "Parent" : "1", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_update_off_diag_r_fu_124", "Parent" : "0", "Child" : ["20", "21"], "CDFG" : "dut_update_off_diag_r", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_update_off_diag_r_fu_124.dut_fadd_32ns_32ns_32_5_full_dsp_U6", "Parent" : "19", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_update_off_diag_r_fu_124.dut_fmul_32ns_32ns_32_4_max_dsp_U7", "Parent" : "19", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_matmul_fu_132", "Parent" : "0", "Child" : ["23", "24", "25", "26"], "CDFG" : "dut_matmul", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matmul_fu_132.A_U", "Parent" : "22", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matmul_fu_132.B_U", "Parent" : "22", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matmul_fu_132.dut_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "22", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matmul_fu_132.dut_fmul_32ns_32ns_32_4_max_dsp_U2", "Parent" : "22", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U30", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U31", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "739511924"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "739511925"}
]}

set Spec2ImplPortList { 
	strm_in_V { ap_fifo {  { strm_in_V_dout fifo_data 0 32 }  { strm_in_V_empty_n fifo_status 0 1 }  { strm_in_V_read fifo_update 1 1 } } }
	strm_out_V { ap_fifo {  { strm_out_V_din fifo_data 1 32 }  { strm_out_V_full_n fifo_status 0 1 }  { strm_out_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V { fifo_read 1839268 has_conditional }
	strm_out_V { fifo_write 613091 has_conditional }
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
