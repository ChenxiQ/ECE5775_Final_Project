set moduleName dut_update_off_diag_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut_update_off_diag_s}
set C_modelType { void 0 }
set C_modelArgList {
	{ top_left int 32 regular  }
	{ bottom_right int 32 regular  }
	{ p_read float 32 regular  }
	{ p_read1 float 32 regular  }
	{ p_read2 float 32 regular  }
	{ p_read3 float 32 regular  }
	{ p_read4 float 32 regular  }
	{ p_read5 float 32 regular  }
	{ p_read6 float 32 regular  }
	{ p_read7 float 32 regular  }
	{ s_col_temp_0 float 32 regular {array 784 { 2 3 } 1 1 }  }
	{ s_col_temp_1 float 32 regular {array 784 { 2 3 } 1 1 }  }
	{ s_row_temp_0 float 32 regular {array 784 { 2 3 } 1 1 }  }
	{ s_row_temp_1 float 32 regular {array 784 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "top_left", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_right", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_col_temp_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "s_col_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "s_row_temp_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "s_row_temp_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ top_left sc_in sc_lv 32 signal 0 } 
	{ bottom_right sc_in sc_lv 32 signal 1 } 
	{ p_read sc_in sc_lv 32 signal 2 } 
	{ p_read1 sc_in sc_lv 32 signal 3 } 
	{ p_read2 sc_in sc_lv 32 signal 4 } 
	{ p_read3 sc_in sc_lv 32 signal 5 } 
	{ p_read4 sc_in sc_lv 32 signal 6 } 
	{ p_read5 sc_in sc_lv 32 signal 7 } 
	{ p_read6 sc_in sc_lv 32 signal 8 } 
	{ p_read7 sc_in sc_lv 32 signal 9 } 
	{ s_col_temp_0_address0 sc_out sc_lv 10 signal 10 } 
	{ s_col_temp_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ s_col_temp_0_we0 sc_out sc_logic 1 signal 10 } 
	{ s_col_temp_0_d0 sc_out sc_lv 32 signal 10 } 
	{ s_col_temp_0_q0 sc_in sc_lv 32 signal 10 } 
	{ s_col_temp_1_address0 sc_out sc_lv 10 signal 11 } 
	{ s_col_temp_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ s_col_temp_1_we0 sc_out sc_logic 1 signal 11 } 
	{ s_col_temp_1_d0 sc_out sc_lv 32 signal 11 } 
	{ s_col_temp_1_q0 sc_in sc_lv 32 signal 11 } 
	{ s_row_temp_0_address0 sc_out sc_lv 10 signal 12 } 
	{ s_row_temp_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ s_row_temp_0_we0 sc_out sc_logic 1 signal 12 } 
	{ s_row_temp_0_d0 sc_out sc_lv 32 signal 12 } 
	{ s_row_temp_0_q0 sc_in sc_lv 32 signal 12 } 
	{ s_row_temp_1_address0 sc_out sc_lv 10 signal 13 } 
	{ s_row_temp_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ s_row_temp_1_we0 sc_out sc_logic 1 signal 13 } 
	{ s_row_temp_1_d0 sc_out sc_lv 32 signal 13 } 
	{ s_row_temp_1_q0 sc_in sc_lv 32 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "top_left", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "top_left", "role": "default" }} , 
 	{ "name": "bottom_right", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bottom_right", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "s_col_temp_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_col_temp_0", "role": "address0" }} , 
 	{ "name": "s_col_temp_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_col_temp_0", "role": "ce0" }} , 
 	{ "name": "s_col_temp_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_col_temp_0", "role": "we0" }} , 
 	{ "name": "s_col_temp_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_col_temp_0", "role": "d0" }} , 
 	{ "name": "s_col_temp_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_col_temp_0", "role": "q0" }} , 
 	{ "name": "s_col_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_col_temp_1", "role": "address0" }} , 
 	{ "name": "s_col_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_col_temp_1", "role": "ce0" }} , 
 	{ "name": "s_col_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_col_temp_1", "role": "we0" }} , 
 	{ "name": "s_col_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_col_temp_1", "role": "d0" }} , 
 	{ "name": "s_col_temp_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_col_temp_1", "role": "q0" }} , 
 	{ "name": "s_row_temp_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_row_temp_0", "role": "address0" }} , 
 	{ "name": "s_row_temp_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_row_temp_0", "role": "ce0" }} , 
 	{ "name": "s_row_temp_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_row_temp_0", "role": "we0" }} , 
 	{ "name": "s_row_temp_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_row_temp_0", "role": "d0" }} , 
 	{ "name": "s_row_temp_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_row_temp_0", "role": "q0" }} , 
 	{ "name": "s_row_temp_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_row_temp_1", "role": "address0" }} , 
 	{ "name": "s_row_temp_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_row_temp_1", "role": "ce0" }} , 
 	{ "name": "s_row_temp_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_row_temp_1", "role": "we0" }} , 
 	{ "name": "s_row_temp_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_row_temp_1", "role": "d0" }} , 
 	{ "name": "s_row_temp_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_row_temp_1", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"], "CDFG" : "dut_update_off_diag_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "top_left", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "bottom_right", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_col_temp_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_col_temp_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_row_temp_0", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "s_row_temp_1", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U1", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fadd_32ns_32ns_32_5_full_dsp_U2", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U3", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U4", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U5", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.dut_fmul_32ns_32ns_32_4_max_dsp_U6", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3138", "Max" : "17250"}
	, {"Name" : "Interval", "Min" : "3138", "Max" : "17250"}
]}

set Spec2ImplPortList { 
	top_left { ap_none {  { top_left in_data 0 32 } } }
	bottom_right { ap_none {  { bottom_right in_data 0 32 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	s_col_temp_0 { ap_memory {  { s_col_temp_0_address0 mem_address 1 10 }  { s_col_temp_0_ce0 mem_ce 1 1 }  { s_col_temp_0_we0 mem_we 1 1 }  { s_col_temp_0_d0 mem_din 1 32 }  { s_col_temp_0_q0 mem_dout 0 32 } } }
	s_col_temp_1 { ap_memory {  { s_col_temp_1_address0 mem_address 1 10 }  { s_col_temp_1_ce0 mem_ce 1 1 }  { s_col_temp_1_we0 mem_we 1 1 }  { s_col_temp_1_d0 mem_din 1 32 }  { s_col_temp_1_q0 mem_dout 0 32 } } }
	s_row_temp_0 { ap_memory {  { s_row_temp_0_address0 mem_address 1 10 }  { s_row_temp_0_ce0 mem_ce 1 1 }  { s_row_temp_0_we0 mem_we 1 1 }  { s_row_temp_0_d0 mem_din 1 32 }  { s_row_temp_0_q0 mem_dout 0 32 } } }
	s_row_temp_1 { ap_memory {  { s_row_temp_1_address0 mem_address 1 10 }  { s_row_temp_1_ce0 mem_ce 1 1 }  { s_row_temp_1_we0 mem_we 1 1 }  { s_row_temp_1_d0 mem_din 1 32 }  { s_row_temp_1_q0 mem_dout 0 32 } } }
}
