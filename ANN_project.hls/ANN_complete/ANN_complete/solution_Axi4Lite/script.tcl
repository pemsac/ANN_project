############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project ANN_complete
set_top feedforward
add_files ANN.cpp
add_files -tb Training.cpp
add_files -tb main.cpp
open_solution "solution_Axi4Lite"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
source "./ANN_complete/solution_Axi4Lite/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -evaluate vhdl -format ip_catalog -description "Feedforward Artificial Neural Network prototype" -vendor "Carlos III University of Madrid" -library "Master's thesis" -version "0.1" -display_name "Feedforward ANN"
