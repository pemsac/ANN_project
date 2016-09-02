vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/axi_lite_ipif_v3_0_3
vlib msim/lib_cdc_v1_0_2
vlib msim/interrupt_control_v3_1_3
vlib msim/axi_gpio_v2_0_9
vlib msim/proc_sys_reset_v5_0_8
vlib msim/xbip_utils_v3_0_5
vlib msim/axi_utils_v2_0_1
vlib msim/xbip_pipe_v3_0_1
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_dsp48_addsub_v3_0_1
vlib msim/xbip_dsp48_multadd_v3_0_1
vlib msim/xbip_bram18k_v3_0_1
vlib msim/mult_gen_v12_0_10
vlib msim/floating_point_v7_1_1
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_7
vlib msim/fifo_generator_v13_0_1
vlib msim/axi_data_fifo_v2_1_6
vlib msim/axi_crossbar_v2_1_8
vlib msim/axi_protocol_converter_v2_1_7

vmap xil_defaultlib msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_3 msim/axi_lite_ipif_v3_0_3
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_3 msim/interrupt_control_v3_1_3
vmap axi_gpio_v2_0_9 msim/axi_gpio_v2_0_9
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap xbip_utils_v3_0_5 msim/xbip_utils_v3_0_5
vmap axi_utils_v2_0_1 msim/axi_utils_v2_0_1
vmap xbip_pipe_v3_0_1 msim/xbip_pipe_v3_0_1
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_1 msim/xbip_dsp48_addsub_v3_0_1
vmap xbip_dsp48_multadd_v3_0_1 msim/xbip_dsp48_multadd_v3_0_1
vmap xbip_bram18k_v3_0_1 msim/xbip_bram18k_v3_0_1
vmap mult_gen_v12_0_10 msim/mult_gen_v12_0_10
vmap floating_point_v7_1_1 msim/floating_point_v7_1_1
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_7 msim/axi_register_slice_v2_1_7
vmap fifo_generator_v13_0_1 msim/fifo_generator_v13_0_1
vmap axi_data_fifo_v2_1_6 msim/axi_data_fifo_v2_1_6
vmap axi_crossbar_v2_1_8 msim/axi_crossbar_v2_1_8
vmap axi_protocol_converter_v2_1_7 msim/axi_protocol_converter_v2_1_7

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \
"../../../bd/design_SWandHW_standalone_v2/ip/design_SWandHW_standalone_v2_processing_system7_0_0/sim/design_SWandHW_standalone_v2_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_3 -64 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work lib_cdc_v1_0_2 -64 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work interrupt_control_v3_1_3 -64 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_9 -64 \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_SWandHW_standalone_v2/ip/design_SWandHW_standalone_v2_axi_gpio_0_0/sim/design_SWandHW_standalone_v2_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_8 -64 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_SWandHW_standalone_v2/ip/design_SWandHW_standalone_v2_rst_processing_system7_0_100M_0/sim/design_SWandHW_standalone_v2_rst_processing_system7_0_100M_0.vhd" \

vcom -work xbip_utils_v3_0_5 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_utils_v3_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_1 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/axi_utils_v2_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_1 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_pipe_v3_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_pipe_v3_0/hdl/xbip_pipe_v3_0.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_dsp48_wrapper_v3_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_1 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_dsp48_addsub_v3_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_dsp48_addsub_v3_0/hdl/xbip_dsp48_addsub_v3_0.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_1 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_dsp48_multadd_v3_0/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_dsp48_multadd_v3_0/hdl/xbip_dsp48_multadd_v3_0.vhd" \

vcom -work xbip_bram18k_v3_0_1 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_bram18k_v3_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/xbip_bram18k_v3_0/hdl/xbip_bram18k_v3_0.vhd" \

vcom -work mult_gen_v12_0_10 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/mult_gen_v12_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/mult_gen_v12_0/hdl/mult_gen_v12_0.vhd" \

vcom -work floating_point_v7_1_1 -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/xilinx.com/floating_point_v7_1/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_AXILiteS_s_axi.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_dadd_64ns_64ns_64_5_full_dsp.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_ddiv_64ns_64ns_64_31.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_dexp_64ns_64ns_64_18_full_dsp.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_fadd_32ns_32ns_32_5_full_dsp.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_fcmp_32ns_32ns_1_1.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_fdiv_32ns_32ns_32_16.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_fmul_32ns_32ns_32_4_max_dsp.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_fpext_32ns_64_1.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_fptrunc_64ns_32_1.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_mul_mul_7ns_14s_14_1.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_mux_4to1_sel2_32_1.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_sitofp_32ns_32_6.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_ST_uOut.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/vhdl/ANN_ST_WandB.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_dadd_3_full_dsp_64.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_ddiv_29_no_dsp_64.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_dexp_16_full_dsp_64.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_fadd_3_full_dsp_32.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_fcmp_0_no_dsp_32.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_fdiv_14_no_dsp_32.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_fpext_0_no_dsp_32.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_fptrunc_0_no_dsp_64.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/hdl/ip/ANN_ap_sitofp_4_no_dsp_32.vhd" \
"../../../bd/design_SWandHW_standalone_v2/ip/design_SWandHW_standalone_v2_ANN_0_0/sim/design_SWandHW_standalone_v2_ANN_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vcom -work fifo_generator_v13_0_1 -64 \
"../../../ipstatic/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../ipstatic/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vlog -work axi_data_fifo_v2_1_6 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_8 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../bd/design_SWandHW_standalone_v2/ip/design_SWandHW_standalone_v2_xbar_0/sim/design_SWandHW_standalone_v2_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_7 -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ANN_project.srcs/sources_1/bd/design_SWandHW_standalone_v2/ipshared/uc3m/ann_v2_1/drivers/ANN_v2_1/src" \
"../../../bd/design_SWandHW_standalone_v2/ip/design_SWandHW_standalone_v2_auto_pc_0/sim/design_SWandHW_standalone_v2_auto_pc_0.v" \

vcom -work xil_defaultlib -64 \
"../../../bd/design_SWandHW_standalone_v2/hdl/design_SWandHW_standalone_v2.vhd" \

vlog -work xil_defaultlib "glbl.v"

