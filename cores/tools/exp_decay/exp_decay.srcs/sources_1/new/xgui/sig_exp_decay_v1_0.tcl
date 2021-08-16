# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DAC_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RISE_TIME" -parent ${Page_0}

  ipgui::add_param $IPINST -name "DECAY_TIME"

}

proc update_PARAM_VALUE.DAC_WIDTH { PARAM_VALUE.DAC_WIDTH } {
	# Procedure called to update DAC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DAC_WIDTH { PARAM_VALUE.DAC_WIDTH } {
	# Procedure called to validate DAC_WIDTH
	return true
}

proc update_PARAM_VALUE.DECAY_TIME { PARAM_VALUE.DECAY_TIME } {
	# Procedure called to update DECAY_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DECAY_TIME { PARAM_VALUE.DECAY_TIME } {
	# Procedure called to validate DECAY_TIME
	return true
}

proc update_PARAM_VALUE.RISE_TIME { PARAM_VALUE.RISE_TIME } {
	# Procedure called to update RISE_TIME when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RISE_TIME { PARAM_VALUE.RISE_TIME } {
	# Procedure called to validate RISE_TIME
	return true
}


proc update_MODELPARAM_VALUE.DAC_WIDTH { MODELPARAM_VALUE.DAC_WIDTH PARAM_VALUE.DAC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DAC_WIDTH}] ${MODELPARAM_VALUE.DAC_WIDTH}
}

proc update_MODELPARAM_VALUE.RISE_TIME { MODELPARAM_VALUE.RISE_TIME PARAM_VALUE.RISE_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RISE_TIME}] ${MODELPARAM_VALUE.RISE_TIME}
}

proc update_MODELPARAM_VALUE.DECAY_TIME { MODELPARAM_VALUE.DECAY_TIME PARAM_VALUE.DECAY_TIME } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DECAY_TIME}] ${MODELPARAM_VALUE.DECAY_TIME}
}

