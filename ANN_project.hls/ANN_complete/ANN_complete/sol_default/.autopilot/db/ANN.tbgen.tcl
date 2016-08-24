set C_TypeInfoList {{ 
"ANN" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"config": [[], {"array": [ {"scalar": "int"}, [6]]}] }, {"WandB": [[], {"array": [ {"array": [ {"scalar": "double"}, [35,36]]}, [4]]}] }, {"uOut": [[], {"array": [ {"array": [ {"scalar": "double"}, [35]]}, [4]]}] }, {"netIn": [[], {"array": [ {"scalar": "double"}, [35]]}] }, {"netOut": [[], {"array": [ {"scalar": "int"}, [35]]}] }],[],""]
}}
set moduleName ANN
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {ANN}
set C_modelType { void 0 }
set C_modelArgList { 
	{ config_r int 32 regular {array 6 { 1 3 } 1 1 }  }
	{ WandB double 64 unused {array 5040 { } 0 1 }  }
	{ uOut double 64 regular {array 140 { 0 3 } 0 1 }  }
	{ netIn double 64 regular {array 35 { 1 3 } 1 1 }  }
	{ netOut int 32 regular {array 35 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "config_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "config","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "WandB", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "WandB","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 34,"step" : 1},{"low" : 0,"up" : 35,"step" : 1}]}]}]} , 
 	{ "Name" : "uOut", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "uOut","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 3,"step" : 1},{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "netIn", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "netIn","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 34,"step" : 1}]}]}]} , 
 	{ "Name" : "netOut", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "netOut","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 34,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ config_r_address0 sc_out sc_lv 3 signal 0 } 
	{ config_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ config_r_q0 sc_in sc_lv 32 signal 0 } 
	{ WandB_address0 sc_out sc_lv 13 signal 1 } 
	{ WandB_ce0 sc_out sc_logic 1 signal 1 } 
	{ WandB_we0 sc_out sc_logic 1 signal 1 } 
	{ WandB_d0 sc_out sc_lv 64 signal 1 } 
	{ WandB_q0 sc_in sc_lv 64 signal 1 } 
	{ WandB_address1 sc_out sc_lv 13 signal 1 } 
	{ WandB_ce1 sc_out sc_logic 1 signal 1 } 
	{ WandB_we1 sc_out sc_logic 1 signal 1 } 
	{ WandB_d1 sc_out sc_lv 64 signal 1 } 
	{ WandB_q1 sc_in sc_lv 64 signal 1 } 
	{ uOut_address0 sc_out sc_lv 8 signal 2 } 
	{ uOut_ce0 sc_out sc_logic 1 signal 2 } 
	{ uOut_we0 sc_out sc_logic 1 signal 2 } 
	{ uOut_d0 sc_out sc_lv 64 signal 2 } 
	{ netIn_address0 sc_out sc_lv 6 signal 3 } 
	{ netIn_ce0 sc_out sc_logic 1 signal 3 } 
	{ netIn_q0 sc_in sc_lv 64 signal 3 } 
	{ netOut_address0 sc_out sc_lv 6 signal 4 } 
	{ netOut_ce0 sc_out sc_logic 1 signal 4 } 
	{ netOut_we0 sc_out sc_logic 1 signal 4 } 
	{ netOut_d0 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "config_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "config_r", "role": "address0" }} , 
 	{ "name": "config_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config_r", "role": "ce0" }} , 
 	{ "name": "config_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "config_r", "role": "q0" }} , 
 	{ "name": "WandB_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "WandB", "role": "address0" }} , 
 	{ "name": "WandB_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WandB", "role": "ce0" }} , 
 	{ "name": "WandB_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WandB", "role": "we0" }} , 
 	{ "name": "WandB_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WandB", "role": "d0" }} , 
 	{ "name": "WandB_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WandB", "role": "q0" }} , 
 	{ "name": "WandB_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "WandB", "role": "address1" }} , 
 	{ "name": "WandB_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WandB", "role": "ce1" }} , 
 	{ "name": "WandB_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "WandB", "role": "we1" }} , 
 	{ "name": "WandB_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WandB", "role": "d1" }} , 
 	{ "name": "WandB_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "WandB", "role": "q1" }} , 
 	{ "name": "uOut_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uOut", "role": "address0" }} , 
 	{ "name": "uOut_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uOut", "role": "ce0" }} , 
 	{ "name": "uOut_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uOut", "role": "we0" }} , 
 	{ "name": "uOut_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "uOut", "role": "d0" }} , 
 	{ "name": "netIn_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "netIn", "role": "address0" }} , 
 	{ "name": "netIn_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "netIn", "role": "ce0" }} , 
 	{ "name": "netIn_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "netIn", "role": "q0" }} , 
 	{ "name": "netOut_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "netOut", "role": "address0" }} , 
 	{ "name": "netOut_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "netOut", "role": "ce0" }} , 
 	{ "name": "netOut_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "netOut", "role": "we0" }} , 
 	{ "name": "netOut_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "netOut", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	config_r { ap_memory {  { config_r_address0 mem_address 1 3 }  { config_r_ce0 mem_ce 1 1 }  { config_r_q0 mem_dout 0 32 } } }
	WandB { ap_memory {  { WandB_address0 mem_address 1 13 }  { WandB_ce0 mem_ce 1 1 }  { WandB_we0 mem_we 1 1 }  { WandB_d0 mem_din 1 64 }  { WandB_q0 mem_dout 0 64 }  { WandB_address1 mem_address 1 13 }  { WandB_ce1 mem_ce 1 1 }  { WandB_we1 mem_we 1 1 }  { WandB_d1 mem_din 1 64 }  { WandB_q1 mem_dout 0 64 } } }
	uOut { ap_memory {  { uOut_address0 mem_address 1 8 }  { uOut_ce0 mem_ce 1 1 }  { uOut_we0 mem_we 1 1 }  { uOut_d0 mem_din 1 64 } } }
	netIn { ap_memory {  { netIn_address0 mem_address 1 6 }  { netIn_ce0 mem_ce 1 1 }  { netIn_q0 mem_dout 0 64 } } }
	netOut { ap_memory {  { netOut_address0 mem_address 1 6 }  { netOut_ce0 mem_ce 1 1 }  { netOut_we0 mem_we 1 1 }  { netOut_d0 mem_din 1 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
