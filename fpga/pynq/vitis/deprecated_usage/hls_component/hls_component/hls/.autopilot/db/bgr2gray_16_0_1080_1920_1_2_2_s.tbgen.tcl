set moduleName bgr2gray_16_0_1080_1920_1_2_2_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {bgr2gray<16, 0, 1080, 1920, 1, 2, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_rows int 32 regular {fifo 0}  }
	{ p_src_cols int 32 regular {fifo 0}  }
	{ imgInput0_data int 24 regular {fifo 0 volatile }  }
	{ imgOutput0_data int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_src_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput0_data", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput0_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_rows_dout sc_in sc_lv 32 signal 0 } 
	{ p_src_rows_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ p_src_rows_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ p_src_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_src_cols_dout sc_in sc_lv 32 signal 1 } 
	{ p_src_cols_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ p_src_cols_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ p_src_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_cols_read sc_out sc_logic 1 signal 1 } 
	{ imgInput0_data_dout sc_in sc_lv 24 signal 2 } 
	{ imgInput0_data_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ imgInput0_data_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ imgInput0_data_empty_n sc_in sc_logic 1 signal 2 } 
	{ imgInput0_data_read sc_out sc_logic 1 signal 2 } 
	{ imgOutput0_data_din sc_out sc_lv 8 signal 3 } 
	{ imgOutput0_data_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ imgOutput0_data_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ imgOutput0_data_full_n sc_in sc_logic 1 signal 3 } 
	{ imgOutput0_data_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_rows", "role": "dout" }} , 
 	{ "name": "p_src_rows_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_rows", "role": "num_data_valid" }} , 
 	{ "name": "p_src_rows_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_rows", "role": "fifo_cap" }} , 
 	{ "name": "p_src_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "read" }} , 
 	{ "name": "p_src_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_cols", "role": "dout" }} , 
 	{ "name": "p_src_cols_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_cols", "role": "num_data_valid" }} , 
 	{ "name": "p_src_cols_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_cols", "role": "fifo_cap" }} , 
 	{ "name": "p_src_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "read" }} , 
 	{ "name": "imgInput0_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput0_data", "role": "dout" }} , 
 	{ "name": "imgInput0_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgInput0_data", "role": "num_data_valid" }} , 
 	{ "name": "imgInput0_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgInput0_data", "role": "fifo_cap" }} , 
 	{ "name": "imgInput0_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput0_data", "role": "empty_n" }} , 
 	{ "name": "imgInput0_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput0_data", "role": "read" }} , 
 	{ "name": "imgOutput0_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput0_data", "role": "din" }} , 
 	{ "name": "imgOutput0_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgOutput0_data", "role": "num_data_valid" }} , 
 	{ "name": "imgOutput0_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgOutput0_data", "role": "fifo_cap" }} , 
 	{ "name": "imgOutput0_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput0_data", "role": "full_n" }} , 
 	{ "name": "imgOutput0_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput0_data", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "bgr2gray_16_0_1080_1920_1_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2082241", "EstimateLatencyMax" : "2082241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput0_data", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64", "Port" : "imgInput0_data", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgOutput0_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64", "Port" : "imgOutput0_data", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "rowloop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1926", "EstimateLatencyMax" : "1926",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput0_data", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgInput0_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput0_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgOutput0_data_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "columnloop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64.mul_8ns_15ns_22_1_1_U62", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64.mac_muladd_8ns_12ns_22ns_22_4_1_U63", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64.mac_muladd_8ns_15ns_22ns_23_4_1_U64", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	bgr2gray_16_0_1080_1920_1_2_2_s {
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		imgInput0_data {Type I LastRead 1 FirstWrite -1}
		imgOutput0_data {Type O LastRead -1 FirstWrite 5}}
	bgr2gray_16_0_1080_1920_1_2_2_Pipeline_columnloop {
		empty {Type I LastRead 0 FirstWrite -1}
		imgInput0_data {Type I LastRead 1 FirstWrite -1}
		imgOutput0_data {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2082241", "Max" : "2082241"}
	, {"Name" : "Interval", "Min" : "2082241", "Max" : "2082241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_rows { ap_fifo {  { p_src_rows_dout fifo_data_in 0 32 }  { p_src_rows_num_data_valid fifo_status_num_data_valid 0 3 }  { p_src_rows_fifo_cap fifo_update 0 3 }  { p_src_rows_empty_n fifo_status 0 1 }  { p_src_rows_read fifo_port_we 1 1 } } }
	p_src_cols { ap_fifo {  { p_src_cols_dout fifo_data_in 0 32 }  { p_src_cols_num_data_valid fifo_status_num_data_valid 0 3 }  { p_src_cols_fifo_cap fifo_update 0 3 }  { p_src_cols_empty_n fifo_status 0 1 }  { p_src_cols_read fifo_port_we 1 1 } } }
	imgInput0_data { ap_fifo {  { imgInput0_data_dout fifo_data_in 0 24 }  { imgInput0_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgInput0_data_fifo_cap fifo_update 0 3 }  { imgInput0_data_empty_n fifo_status 0 1 }  { imgInput0_data_read fifo_port_we 1 1 } } }
	imgOutput0_data { ap_fifo {  { imgOutput0_data_din fifo_data_in 1 8 }  { imgOutput0_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgOutput0_data_fifo_cap fifo_update 0 3 }  { imgOutput0_data_full_n fifo_status 0 1 }  { imgOutput0_data_write fifo_port_we 1 1 } } }
}
