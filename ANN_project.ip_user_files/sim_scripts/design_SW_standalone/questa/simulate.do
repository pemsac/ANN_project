onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "C:/Xilinx/Vivado/2015.4/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib design_SW_standalone_opt

do {wave.do}

view wave
view structure
view signals

do {design_SW_standalone.udo}

run -all

quit -force
