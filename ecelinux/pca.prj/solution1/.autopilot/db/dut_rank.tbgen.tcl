set moduleName dut_rank
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_rank}
set C_modelType { void 0 }
set C_modelArgList {
	{ PCA_sorted_idx int 32 regular {array 784 { 2 2 } 1 1 }  }
	{ tsf_mat float 32 regular {array 7840 { 0 3 } 0 1 }  }
	{ S float 32 regular {array 614656 { 1 1 } 3 1 }  }
	{ U float 32 regular {array 614656 { 1 3 } 3 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "PCA_sorted_idx", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tsf_mat", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "S", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "U", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ PCA_sorted_idx_address0 sc_out sc_lv 10 signal 0 } 
	{ PCA_sorted_idx_ce0 sc_out sc_logic 1 signal 0 } 
	{ PCA_sorted_idx_we0 sc_out sc_logic 1 signal 0 } 
	{ PCA_sorted_idx_d0 sc_out sc_lv 32 signal 0 } 
	{ PCA_sorted_idx_q0 sc_in sc_lv 32 signal 0 } 
	{ PCA_sorted_idx_address1 sc_out sc_lv 10 signal 0 } 
	{ PCA_sorted_idx_ce1 sc_out sc_logic 1 signal 0 } 
	{ PCA_sorted_idx_we1 sc_out sc_logic 1 signal 0 } 
	{ PCA_sorted_idx_d1 sc_out sc_lv 32 signal 0 } 
	{ PCA_sorted_idx_q1 sc_in sc_lv 32 signal 0 } 
	{ tsf_mat_address0 sc_out sc_lv 13 signal 1 } 
	{ tsf_mat_ce0 sc_out sc_logic 1 signal 1 } 
	{ tsf_mat_we0 sc_out sc_logic 1 signal 1 } 
	{ tsf_mat_d0 sc_out sc_lv 32 signal 1 } 
	{ S_address0 sc_out sc_lv 20 signal 2 } 
	{ S_ce0 sc_out sc_logic 1 signal 2 } 
	{ S_q0 sc_in sc_lv 32 signal 2 } 
	{ S_address1 sc_out sc_lv 20 signal 2 } 
	{ S_ce1 sc_out sc_logic 1 signal 2 } 
	{ S_q1 sc_in sc_lv 32 signal 2 } 
	{ U_address0 sc_out sc_lv 20 signal 3 } 
	{ U_ce0 sc_out sc_logic 1 signal 3 } 
	{ U_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "PCA_sorted_idx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "address0" }} , 
 	{ "name": "PCA_sorted_idx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "ce0" }} , 
 	{ "name": "PCA_sorted_idx_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "we0" }} , 
 	{ "name": "PCA_sorted_idx_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "d0" }} , 
 	{ "name": "PCA_sorted_idx_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "q0" }} , 
 	{ "name": "PCA_sorted_idx_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "address1" }} , 
 	{ "name": "PCA_sorted_idx_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "ce1" }} , 
 	{ "name": "PCA_sorted_idx_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "we1" }} , 
 	{ "name": "PCA_sorted_idx_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "d1" }} , 
 	{ "name": "PCA_sorted_idx_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PCA_sorted_idx", "role": "q1" }} , 
 	{ "name": "tsf_mat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "tsf_mat", "role": "address0" }} , 
 	{ "name": "tsf_mat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tsf_mat", "role": "ce0" }} , 
 	{ "name": "tsf_mat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tsf_mat", "role": "we0" }} , 
 	{ "name": "tsf_mat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tsf_mat", "role": "d0" }} , 
 	{ "name": "S_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "S", "role": "address0" }} , 
 	{ "name": "S_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce0" }} , 
 	{ "name": "S_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q0" }} , 
 	{ "name": "S_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "S", "role": "address1" }} , 
 	{ "name": "S_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "S", "role": "ce1" }} , 
 	{ "name": "S_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "S", "role": "q1" }} , 
 	{ "name": "U_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "U", "role": "address0" }} , 
 	{ "name": "U_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "U", "role": "ce0" }} , 
 	{ "name": "U_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "U", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"], "CDFG" : "dut_rank", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "PCA_sorted_idx", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "tsf_mat", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "S", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "U", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fcmp_32ns_32ns_1_1_U40", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_21s_21_1_U41", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_mul_mul_11ns_21s_21_1_U42", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set Spec2ImplPortList { 
	PCA_sorted_idx { ap_memory {  { PCA_sorted_idx_address0 mem_address 1 10 }  { PCA_sorted_idx_ce0 mem_ce 1 1 }  { PCA_sorted_idx_we0 mem_we 1 1 }  { PCA_sorted_idx_d0 mem_din 1 32 }  { PCA_sorted_idx_q0 mem_dout 0 32 }  { PCA_sorted_idx_address1 mem_address 1 10 }  { PCA_sorted_idx_ce1 mem_ce 1 1 }  { PCA_sorted_idx_we1 mem_we 1 1 }  { PCA_sorted_idx_d1 mem_din 1 32 }  { PCA_sorted_idx_q1 mem_dout 0 32 } } }
	tsf_mat { ap_memory {  { tsf_mat_address0 mem_address 1 13 }  { tsf_mat_ce0 mem_ce 1 1 }  { tsf_mat_we0 mem_we 1 1 }  { tsf_mat_d0 mem_din 1 32 } } }
	S { ap_memory {  { S_address0 mem_address 1 20 }  { S_ce0 mem_ce 1 1 }  { S_q0 mem_dout 0 32 }  { S_address1 mem_address 1 20 }  { S_ce1 mem_ce 1 1 }  { S_q1 mem_dout 0 32 } } }
	U { ap_memory {  { U_address0 mem_address 1 20 }  { U_ce0 mem_ce 1 1 }  { U_q0 mem_dout 0 32 } } }
}
