onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -pli "C:/Xilinx/Vivado/2015.4/lib/win64.o/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.design_SW_standalone xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_SW_standalone.udo}

run -all

quit -force
