vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xlconstant_v1_1_6
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_6
vlib riviera/processing_system7_vip_v1_0_8
vlib riviera/xbip_utils_v3_0_10
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14
vlib riviera/c_gate_bit_v12_0_6
vlib riviera/xbip_counter_v3_0_6
vlib riviera/c_counter_binary_v12_0_14
vlib riviera/xlconcat_v2_1_3
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_broadcaster_v1_1_19
vlib riviera/axis_combiner_v1_1_18
vlib riviera/axis_clock_converter_v1_1_21
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/axi_protocol_converter_v2_1_20

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 riviera/processing_system7_vip_v1_0_8
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14
vmap c_gate_bit_v12_0_6 riviera/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 riviera/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_14 riviera/c_counter_binary_v12_0_14
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_broadcaster_v1_1_19 riviera/axis_broadcaster_v1_1_19
vmap axis_combiner_v1_1_18 riviera/axis_combiner_v1_1_18
vmap axis_clock_converter_v1_1_21 riviera/axis_clock_converter_v1_1_21
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap axi_protocol_converter_v2_1_20 riviera/axi_protocol_converter_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_Waveform_Offset_Addr_1/sim/system_Waveform_Offset_Addr_1.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_ps_0_2/sim/system_ps_0_2.v" \
"../../../bd/system/ipshared/edca/src/axis_ram_writer.v" \
"../../../bd/system/ip/system_writer_0_2/sim/system_writer_0_2.v" \
"../../../bd/system/ip/system_writer_0_3/sim/system_writer_0_3.v" \
"../../../bd/system/ip/system_Waveform_Offset_Addr_2/sim/system_Waveform_Offset_Addr_2.v" \
"../../../bd/system/ipshared/fda5/src/axis_red_pitaya_adc.v" \
"../../../bd/system/ip/system_adc_0_0/sim/system_adc_0_0.v" \
"../../../bd/system/ipshared/ab40/src/axis_red_pitaya_dac.v" \
"../../../bd/system/ip/system_axis_red_pitaya_dac_0_0/sim/system_axis_red_pitaya_dac_0_0.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/b795/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_14 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/1f12/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_c_counter_binary_0_0/sim/system_c_counter_binary_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/b7d1/src/axi_cfg_register.v" \
"../../../bd/system/ip/system_cfg_0_0/sim/system_cfg_0_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_concat_0_0/sim/system_concat_0_0.v" \
"../../../bd/system/ip/system_const_0_0/sim/system_const_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_not_0_0/sim/system_not_0_0.v" \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0.v" \
"../../../bd/system/ipshared/8bd6/src/port_slicer.v" \
"../../../bd/system/ip/system_port_slicer_4_0/sim/system_port_slicer_4_0.v" \
"../../../bd/system/ipshared/0f35/pulse_gen.v" \
"../../../bd/system/ip/system_pulse_gen_0_0/sim/system_pulse_gen_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_0_0/sim/system_rst_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/cf81/exp_decay.v" \
"../../../bd/system/ip/system_sig_exp_decay_0_0/sim/system_sig_exp_decay_0_0.v" \
"../../../bd/system/ip/system_slice_2_0/sim/system_slice_2_0.v" \
"../../../bd/system/ip/system_slice_3_0/sim/system_slice_3_0.v" \
"../../../bd/system/ip/system_xlconcat_2_0/sim/system_xlconcat_2_0.v" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
"../../../bd/system/ip/system_port_slicer_0_0/sim/system_port_slicer_0_0.v" \
"../../../bd/system/ip/system_port_slicer_0_1/sim/system_port_slicer_0_1.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_broadcaster_0_0/hdl/tdata_system_axis_broadcaster_0_0.v" \
"../../../bd/system/ip/system_axis_broadcaster_0_0/hdl/tuser_system_axis_broadcaster_0_0.v" \

vlog -work axis_broadcaster_v1_1_19  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/d7e4/hdl/axis_broadcaster_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_broadcaster_0_0/hdl/top_system_axis_broadcaster_0_0.v" \
"../../../bd/system/ip/system_axis_broadcaster_0_0/sim/system_axis_broadcaster_0_0.v" \

vlog -work axis_combiner_v1_1_18  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ddc9/hdl/axis_combiner_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_combiner_0_0/sim/system_axis_combiner_0_0.v" \

vlog -work axis_clock_converter_v1_1_21  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/5a68/hdl/axis_clock_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_clock_converter_0_0/sim/system_axis_clock_converter_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/2d50/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/4fba" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ipshared/8713/hdl" "+incdir+../../../../adc_recorder.srcs/sources_1/bd/system/ip/system_ps_0_2" "+incdir+/tools/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

