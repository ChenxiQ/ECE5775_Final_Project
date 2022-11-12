set C_TypeInfoList {{ 
"dut" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_in": [[], {"reference": "0"}] }, {"strm_out": [[], {"reference": "1"}] }],[],""], 
"1": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"2"]}}], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"3"]],"2"]}}], 
"3": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
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
	{ strm_in_V_V int 32 regular {fifo 0 volatile }  }
	{ strm_out_V float 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_in.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
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
	{ strm_in_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_V_V_read sc_out sc_logic 1 signal 0 } 
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
 	{ "name": "strm_in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "dout" }} , 
 	{ "name": "strm_in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "read" }} , 
 	{ "name": "strm_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V", "role": "din" }} , 
 	{ "name": "strm_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V", "role": "full_n" }} , 
 	{ "name": "strm_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "53", "63", "66", "73", "77"], "CDFG" : "dut", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st20_fsm_19", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_svd_basic_fu_424"},
		{"State" : "ap_ST_st18_fsm_17", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_cov_fu_432"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_normalize_fu_438"},
		{"State" : "ap_ST_st24_fsm_23", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_matrix_multiply_alt2_fu_444"},
		{"State" : "ap_ST_st22_fsm_21", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_rank_fu_451"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.X_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_assign_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.tsf_mat_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.pca_sorted_idx_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.S_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.XXT_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424", "Parent" : "0", "Child" : ["11", "12", "13", "14", "19", "24", "27", "30", "33", "36", "39", "42", "45", "48", "49", "50", "51", "52"], "CDFG" : "dut_svd_basic", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "S", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "U", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "V", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_calc_angle_float_float_s_fu_576"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_calc_angle_float_float_s_fu_582"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.s_in_U", "Parent" : "10", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.u_in_U", "Parent" : "10", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.v_in_U", "Parent" : "10", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_576", "Parent" : "10", "Child" : ["15", "16", "17", "18"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A_re", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_im", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_576.dut_faddfsub_32ns_32ns_32_5_full_dsp_U18", "Parent" : "14", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_576.dut_fmul_32ns_32ns_32_4_max_dsp_U19", "Parent" : "14", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_576.dut_fdiv_32ns_32ns_32_16_U20", "Parent" : "14", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_576.dut_frsqrt_32ns_32ns_32_11_full_dsp_U21", "Parent" : "14", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_582", "Parent" : "10", "Child" : ["20", "21", "22", "23"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A_re", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_im", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_582.dut_faddfsub_32ns_32ns_32_5_full_dsp_U18", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_582.dut_fmul_32ns_32ns_32_4_max_dsp_U19", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_582.dut_fdiv_32ns_32ns_32_16_U20", "Parent" : "19", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_calc_angle_float_float_s_fu_582.dut_frsqrt_32ns_32ns_32_11_full_dsp_U21", "Parent" : "19", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_588", "Parent" : "10", "Child" : ["25", "26"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_588.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "24", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_588.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "24", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_596", "Parent" : "10", "Child" : ["28", "29"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_596.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "27", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_596.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "27", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_604", "Parent" : "10", "Child" : ["31", "32"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_604.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "30", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_604.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "30", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_612", "Parent" : "10", "Child" : ["34", "35"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_612.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "33", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_612.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "33", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_620", "Parent" : "10", "Child" : ["37", "38"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_620.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "36", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_620.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "36", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_628", "Parent" : "10", "Child" : ["40", "41"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_628.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "39", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_628.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "39", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_636", "Parent" : "10", "Child" : ["43", "44"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_636.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "42", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_636.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "42", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_644", "Parent" : "10", "Child" : ["46", "47"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_644.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "45", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.grp_dut_vm2x1_base_fu_644.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "45", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.dut_fsub_32ns_32ns_32_5_full_dsp_U30", "Parent" : "10", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.dut_fadd_32ns_32ns_32_5_full_dsp_U31", "Parent" : "10", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.dut_fadd_32ns_32ns_32_5_full_dsp_U32", "Parent" : "10", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.dut_fsub_32ns_32ns_32_5_full_dsp_U33", "Parent" : "10", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_svd_basic_fu_424.dut_mul_mul_11ns_21s_21_1_U34", "Parent" : "10", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432", "Parent" : "0", "Child" : ["54", "55", "62"], "CDFG" : "dut_cov", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "X", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_matrix_multiply_alt26_fu_159", "Port" : "A"}]}, 
		{"Name" : "XXT", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_matrix_multiply_alt26_fu_159", "Port" : "C"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_matrix_multiply_alt26_fu_159"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.XT_U", "Parent" : "53", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.grp_dut_matrix_multiply_alt26_fu_159", "Parent" : "53", "Child" : ["56", "57", "58", "59", "60", "61"], "CDFG" : "dut_matrix_multiply_alt26", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "B", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "C", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.grp_dut_matrix_multiply_alt26_fu_159.sum_mult_U", "Parent" : "55", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.grp_dut_matrix_multiply_alt26_fu_159.dut_fadd_32ns_32ns_32_5_full_dsp_U5", "Parent" : "55", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.grp_dut_matrix_multiply_alt26_fu_159.dut_fmul_32ns_32ns_32_4_max_dsp_U6", "Parent" : "55", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.grp_dut_matrix_multiply_alt26_fu_159.dut_mac_muladd_10ns_11ns_10ns_20_1_U7", "Parent" : "55", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.grp_dut_matrix_multiply_alt26_fu_159.dut_mac_muladd_7ns_11ns_10ns_17_1_U8", "Parent" : "55", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.grp_dut_matrix_multiply_alt26_fu_159.dut_mac_muladd_10ns_8ns_7ns_17_1_U9", "Parent" : "55", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_cov_fu_432.dut_fdiv_32ns_32ns_32_16_U14", "Parent" : "53", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_normalize_fu_438", "Parent" : "0", "Child" : ["64", "65"], "CDFG" : "dut_normalize", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "X", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "mean", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_normalize_fu_438.dut_faddfsub_32ns_32ns_32_5_full_dsp_U1", "Parent" : "63", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_normalize_fu_438.dut_fdiv_32ns_32ns_32_16_U2", "Parent" : "63", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt2_fu_444", "Parent" : "0", "Child" : ["67", "68", "69", "70", "71", "72"], "CDFG" : "dut_matrix_multiply_alt2", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "B", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "C", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt2_fu_444.sum_mult_U", "Parent" : "66", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt2_fu_444.dut_fadd_32ns_32ns_32_5_full_dsp_U47", "Parent" : "66", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt2_fu_444.dut_fmul_32ns_32ns_32_4_max_dsp_U48", "Parent" : "66", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt2_fu_444.dut_mac_muladd_4ns_8ns_7ns_11_1_U49", "Parent" : "66", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt2_fu_444.dut_mac_muladd_10ns_8ns_7ns_17_1_U50", "Parent" : "66", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt2_fu_444.dut_mac_muladd_4ns_11ns_10ns_14_1_U51", "Parent" : "66", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_rank_fu_451", "Parent" : "0", "Child" : ["74", "75", "76"], "CDFG" : "dut_rank", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "PCA_sorted_idx", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "tsf_mat", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "S", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "U", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_rank_fu_451.dut_fcmp_32ns_32ns_1_1_U40", "Parent" : "73", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_rank_fu_451.dut_mul_mul_11ns_21s_21_1_U41", "Parent" : "73", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_rank_fu_451.dut_mul_mul_11ns_21s_21_1_U42", "Parent" : "73", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_uitofp_32ns_32_6_U56", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	strm_in_V_V { ap_fifo {  { strm_in_V_V_dout fifo_data 0 32 }  { strm_in_V_V_empty_n fifo_status 0 1 }  { strm_in_V_V_read fifo_update 1 1 } } }
	strm_out_V { ap_fifo {  { strm_out_V_din fifo_data 1 32 }  { strm_out_V_full_n fifo_status 0 1 }  { strm_out_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V_V { fifo_read 196 no_conditional }
	strm_out_V { fifo_write 1668 no_conditional }
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
