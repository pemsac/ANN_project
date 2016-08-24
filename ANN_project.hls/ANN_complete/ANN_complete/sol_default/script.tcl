############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project ANN_complete
set_top ANN
add_files ANN.cpp
add_files -tb Training.cpp
add_files -tb main.cpp
open_solution "sol_default"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./ANN_complete/sol_default/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -evaluate vhdl -format ip_catalog -description "Customifable Feed-forward Neural Network for classification" -vendor "UC3M" -library "Master's thesis" -display_name "Feedforward ANN"
