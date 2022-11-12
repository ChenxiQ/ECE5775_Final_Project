set moduleName dut_cov
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_cov}
set C_modelType { void 0 }
set C_modelArgList {
	{ X float 32 regular {array 78400 { 1 3 } 1 1 }  }
	{ XXT float 32 regular {array 614656 { 2 3 } 3 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "XXT", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ X_address0 sc_out sc_lv 17 signal 0 } 
	{ X_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_q0 sc_in sc_lv 32 signal 0 } 
	{ XXT_address0 sc_out sc_lv 20 signal 1 } 
	{ XXT_ce0 sc_out sc_logic 1 signal 1 } 
	{ XXT_we0 sc_out sc_logic 1 signal 1 } 
	{ XXT_d0 sc_out sc_lv 32 signal 1 } 
	{ XXT_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "X_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "X", "role": "address0" }} , 
 	{ "name": "X_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "ce0" }} , 
 	{ "name": "X_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "q0" }} , 
 	{ "name": "XXT_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "XXT", "role": "address0" }} , 
 	{ "name": "XXT_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "XXT", "role": "ce0" }} , 
 	{ "name": "XXT_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "XXT", "role": "we0" }} , 
 	{ "name": "XXT_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "XXT", "role": "d0" }} , 
 	{ "name": "XXT_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "XXT", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "9"], "CDFG" : "dut_cov", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "X", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_matrix_multiply_alt26_fu_159", "Port" : "A"}]}, 
		{"Name" : "XXT", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_matrix_multiply_alt26_fu_159", "Port" : "C"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_matrix_multiply_alt26_fu_159"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.XT_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt26_fu_159", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8"], "CDFG" : "dut_matrix_multiply_alt26", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "A", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "B", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "C", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt26_fu_159.sum_mult_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt26_fu_159.dut_fadd_32ns_32ns_32_5_full_dsp_U5", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt26_fu_159.dut_fmul_32ns_32ns_32_4_max_dsp_U6", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt26_fu_159.dut_mac_muladd_10ns_11ns_10ns_20_1_U7", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt26_fu_159.dut_mac_muladd_7ns_11ns_10ns_17_1_U8", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_matrix_multiply_alt26_fu_159.dut_mac_muladd_10ns_8ns_7ns_17_1_U9", "Parent" : "2", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fdiv_32ns_32ns_32_16_U14", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "73918672", "Max" : "73918672"}
	, {"Name" : "Interval", "Min" : "73918672", "Max" : "73918672"}
]}

set Spec2ImplPortList { 
	X { ap_memory {  { X_address0 mem_address 1 17 }  { X_ce0 mem_ce 1 1 }  { X_q0 mem_dout 0 32 } } }
	XXT { ap_memory {  { XXT_address0 mem_address 1 20 }  { XXT_ce0 mem_ce 1 1 }  { XXT_we0 mem_we 1 1 }  { XXT_d0 mem_din 1 32 }  { XXT_q0 mem_dout 0 32 } } }
}
