# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "DAC_WIDTH"

}

proc update_PARAM_VALUE.DAC_WIDTH { PARAM_VALUE.DAC_WIDTH } {
	# Procedure called to update DAC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_WIDTH { PARAM_VALUE.DAC_WIDTH } {
	# Procedure called to validate DAC_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.DAC_WIDTH { MODELPARAM_VALUE.DAC_WIDTH PARAM_VALUE.DAC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_WIDTH}] ${MODELPARAM_VALUE.DAC_WIDTH}
}

