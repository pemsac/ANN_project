############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project sigmoid_function
set_top sigmoid
add_files files/sigmoid.cpp
add_files -tb files/testbench.cpp
open_solution "sol_Default"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./sigmoid_function/sol_Default/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -evaluate vhdl -format ip_catalog -description "sigmoid function for artificial neuron's activation function" -vendor "Carlos III University of Madrid" -library "Master's thesis" -display_name "Sigmoid"
