# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "PARAM_WIDTH" -parent ${Page_0}

  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH"
  ipgui::add_param $IPINST -name "TIMER_WIDTH"

}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to update PARAM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to validate PARAM_WIDTH
	return true
}

proc update_PARAM_VALUE.TIMER_WIDTH { PARAM_VALUE.TIMER_WIDTH } {
	# Procedure called to update TIMER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TIMER_WIDTH { PARAM_VALUE.TIMER_WIDTH } {
	# Procedure called to validate TIMER_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.PARAM_WIDTH { MODELPARAM_VALUE.PARAM_WIDTH PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_WIDTH}] ${MODELPARAM_VALUE.PARAM_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.TIMER_WIDTH { MODELPARAM_VALUE.TIMER_WIDTH PARAM_VALUE.TIMER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TIMER_WIDTH}] ${MODELPARAM_VALUE.TIMER_WIDTH}
}

