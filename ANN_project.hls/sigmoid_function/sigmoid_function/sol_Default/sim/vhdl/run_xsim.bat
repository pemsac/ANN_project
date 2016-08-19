
call xelab xil_defaultlib.apatb_sigmoid_top -prj sigmoid.prj --lib "ieee_proposed=./ieee_proposed" -s sigmoid 
call xsim --noieeewarnings sigmoid -tclbatch sigmoid.tcl

