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
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
source "./ANN_complete/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -evaluate vhdl -format ip_catalog -description "Artificial Neura Network" -vendor "UC3M" -library "MISEA_thesis" -version "2.1" -display_name "ANN"
