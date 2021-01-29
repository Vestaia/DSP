# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "DIN_WIDTH"
  ipgui::add_param $IPINST -name "DIN_FROM"
  ipgui::add_param $IPINST -name "DIN_TO"

}

proc update_PARAM_VALUE.DIN_FROM { PARAM_VALUE.DIN_FROM } {
	# Procedure called to update DIN_FROM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIN_FROM { PARAM_VALUE.DIN_FROM } {
	# Procedure called to validate DIN_FROM
	return true
}

proc update_PARAM_VALUE.DIN_TO { PARAM_VALUE.DIN_TO } {
	# Procedure called to update DIN_TO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIN_TO { PARAM_VALUE.DIN_TO } {
	# Procedure called to validate DIN_TO
	return true
}

proc update_PARAM_VALUE.DIN_WIDTH { PARAM_VALUE.DIN_WIDTH } {
	# Procedure called to update DIN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIN_WIDTH { PARAM_VALUE.DIN_WIDTH } {
	# Procedure called to validate DIN_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.DIN_WIDTH { MODELPARAM_VALUE.DIN_WIDTH PARAM_VALUE.DIN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIN_WIDTH}] ${MODELPARAM_VALUE.DIN_WIDTH}
}

proc update_MODELPARAM_VALUE.DIN_FROM { MODELPARAM_VALUE.DIN_FROM PARAM_VALUE.DIN_FROM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIN_FROM}] ${MODELPARAM_VALUE.DIN_FROM}
}

proc update_MODELPARAM_VALUE.DIN_TO { MODELPARAM_VALUE.DIN_TO PARAM_VALUE.DIN_TO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIN_TO}] ${MODELPARAM_VALUE.DIN_TO}
}

