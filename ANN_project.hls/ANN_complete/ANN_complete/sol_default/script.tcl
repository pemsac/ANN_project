############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project ANN_complete
add_files files/ANN.cpp
add_files -tb files/Training.cpp
add_files -tb files/testbench.cpp
open_solution "sol_default"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./ANN_complete/sol_default/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
