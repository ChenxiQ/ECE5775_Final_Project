set moduleName dut_svd_basic
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_svd_basic}
set C_modelType { void 0 }
set C_modelArgList {
	{ A float 32 regular {array 614656 { 1 1 } 3 1 }  }
	{ S float 32 regular {array 614656 { 0 0 } 1 1 }  }
	{ U float 32 regular {array 614656 { 0 0 } 1 1 }  }
	{ V float 32 regular {array 614656 { 0 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "S", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "U", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
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
	{ A_address1 sc_out sc_lv 20 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_q1 sc_in sc_lv 32 signal 0 } 
	{ S_address0 sc_out sc_lv 20 signal 1 } 
	{ S_ce0 sc_out sc_logic 1 signal 1 } 
	{ S_we0 sc_out sc_logic 1 signal 1 } 
	{ S_d0 sc_out sc_lv 32 signal 1 } 
	{ S_address1 sc_out sc_lv 20 signal 1 } 
	{ S_ce1 sc_out sc_logic 1 signal 1 } 
	{ S_we1 sc_out sc_logic 1 signal 1 } 
	{ S_d1 sc_out sc_lv 32 signal 1 } 
	{ U_address0 sc_out sc_lv 20 signal 2 } 
	{ U_ce0 sc_out sc_logic 1 signal 2 } 
	{ U_we0 sc_out sc_logic 1 signal 2 } 
	{ U_d0 sc_out sc_lv 32 signal 2 } 
	{ U_address1 sc_out sc_lv 20 signal 2 } 
	{ U_ce1 sc_out sc_logic 1 signal 2 } 
	{ U_we1 sc_out sc_logic 1 signal 2 } 
	{ U_d1 sc_out sc_lv 32 signal 2 } 
	{ V_address0 sc_out sc_lv 20 signal 3 } 
	{ V_ce0 sc_out sc_logic 1 signal 3 } 
	{ V_we0 sc_out sc_logic 1 signal 3 } 
	{ V_d0 sc_out sc_lv 32 signal 3 } 
	{ V_address1 sc_out sc_lv 20 signal 3 } 
	{ V_ce1 sc_out sc_logic 1 signal 3 } 
	{ V_we1 sc_out sc_logic 1 signal 3 } 
	{ V_d1 sc_out sc_lv 32 signal 3 } 
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
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q1" }} , 
 	{ "name": "S_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "S", "role": "address0" }} , 
 	{ "name": "S_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce0" }} , 
 	{ "name": "S_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "we0" }} , 
 	{ "name": "S_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "d0" }} , 
 	{ "name": "S_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "S", "role": "address1" }} , 
 	{ "name": "S_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce1" }} , 
 	{ "name": "S_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "we1" }} , 
 	{ "name": "S_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "d1" }} , 
 	{ "name": "U_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "U", "role": "address0" }} , 
 	{ "name": "U_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "ce0" }} , 
 	{ "name": "U_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "we0" }} , 
 	{ "name": "U_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "d0" }} , 
 	{ "name": "U_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "U", "role": "address1" }} , 
 	{ "name": "U_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "ce1" }} , 
 	{ "name": "U_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "we1" }} , 
 	{ "name": "U_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "d1" }} , 
 	{ "name": "V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "V", "role": "address0" }} , 
 	{ "name": "V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ce0" }} , 
 	{ "name": "V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "we0" }} , 
 	{ "name": "V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "d0" }} , 
 	{ "name": "V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "V", "role": "address1" }} , 
 	{ "name": "V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "ce1" }} , 
 	{ "name": "V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "V", "role": "we1" }} , 
 	{ "name": "V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "9", "14", "17", "20", "23", "26", "29", "32", "35", "38", "39", "40", "41", "42"], "CDFG" : "dut_svd_basic", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "S", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "U", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "V", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_calc_angle_float_float_s_fu_576"},
		{"State" : "ap_ST_st16_fsm_15", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_calc_angle_float_float_s_fu_582"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_in_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_in_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_in_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_576", "Parent" : "0", "Child" : ["5", "6", "7", "8"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A_re", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_im", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_576.dut_faddfsub_32ns_32ns_32_5_full_dsp_U18", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_576.dut_fmul_32ns_32ns_32_4_max_dsp_U19", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_576.dut_fdiv_32ns_32ns_32_16_U20", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_576.dut_frsqrt_32ns_32ns_32_11_full_dsp_U21", "Parent" : "4", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_582", "Parent" : "0", "Child" : ["10", "11", "12", "13"], "CDFG" : "dut_calc_angle_float_float_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A_re", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "A_im", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_582.dut_faddfsub_32ns_32ns_32_5_full_dsp_U18", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_582.dut_fmul_32ns_32ns_32_4_max_dsp_U19", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_582.dut_fdiv_32ns_32ns_32_16_U20", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_calc_angle_float_float_s_fu_582.dut_frsqrt_32ns_32ns_32_11_full_dsp_U21", "Parent" : "9", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_588", "Parent" : "0", "Child" : ["15", "16"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_588.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "14", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_588.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "14", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_596", "Parent" : "0", "Child" : ["18", "19"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_596.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "17", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_596.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "17", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_604", "Parent" : "0", "Child" : ["21", "22"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_604.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "20", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_604.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "20", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_612", "Parent" : "0", "Child" : ["24", "25"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_612.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_612.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "23", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_620", "Parent" : "0", "Child" : ["27", "28"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_620.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "26", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_620.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "26", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_628", "Parent" : "0", "Child" : ["30", "31"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_628.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "29", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_628.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "29", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_636", "Parent" : "0", "Child" : ["33", "34"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_636.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "32", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_636.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "32", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_644", "Parent" : "0", "Child" : ["36", "37"], "CDFG" : "dut_vm2x1_base", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "a1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "a2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_644.dut_fadd_32ns_32ns_32_5_full_dsp_U24", "Parent" : "35", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_vm2x1_base_fu_644.dut_fmul_32ns_32ns_32_4_max_dsp_U25", "Parent" : "35", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fsub_32ns_32ns_32_5_full_dsp_U30", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U31", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U32", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fsub_32ns_32ns_32_5_full_dsp_U33", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_21s_21_1_U34", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14113", "Max" : "260456081761"}
	, {"Name" : "Interval", "Min" : "14113", "Max" : "2758044001"}
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address0 mem_address 1 20 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 }  { A_address1 mem_address 1 20 }  { A_ce1 mem_ce 1 1 }  { A_q1 mem_dout 0 32 } } }
	S { ap_memory {  { S_address0 mem_address 1 20 }  { S_ce0 mem_ce 1 1 }  { S_we0 mem_we 1 1 }  { S_d0 mem_din 1 32 }  { S_address1 mem_address 1 20 }  { S_ce1 mem_ce 1 1 }  { S_we1 mem_we 1 1 }  { S_d1 mem_din 1 32 } } }
	U { ap_memory {  { U_address0 mem_address 1 20 }  { U_ce0 mem_ce 1 1 }  { U_we0 mem_we 1 1 }  { U_d0 mem_din 1 32 }  { U_address1 mem_address 1 20 }  { U_ce1 mem_ce 1 1 }  { U_we1 mem_we 1 1 }  { U_d1 mem_din 1 32 } } }
	V { ap_memory {  { V_address0 mem_address 1 20 }  { V_ce0 mem_ce 1 1 }  { V_we0 mem_we 1 1 }  { V_d0 mem_din 1 32 }  { V_address1 mem_address 1 20 }  { V_ce1 mem_ce 1 1 }  { V_we1 mem_we 1 1 }  { V_d1 mem_din 1 32 } } }
}
