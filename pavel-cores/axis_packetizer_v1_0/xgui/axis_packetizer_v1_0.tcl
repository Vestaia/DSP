# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ALWAYS_READY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CNTR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONTINUOUS" -parent ${Page_0}


}

proc update_PARAM_VALUE.ALWAYS_READY { PARAM_VALUE.ALWAYS_READY } {
	# Procedure called to update ALWAYS_READY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ALWAYS_READY { PARAM_VALUE.ALWAYS_READY } {
	# Procedure called to validate ALWAYS_READY
	return true
}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.CNTR_WIDTH { PARAM_VALUE.CNTR_WIDTH } {
	# Procedure called to update CNTR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CNTR_WIDTH { PARAM_VALUE.CNTR_WIDTH } {
	# Procedure called to validate CNTR_WIDTH
	return true
}

proc update_PARAM_VALUE.CONTINUOUS { PARAM_VALUE.CONTINUOUS } {
	# Procedure called to update CONTINUOUS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONTINUOUS { PARAM_VALUE.CONTINUOUS } {
	# Procedure called to validate CONTINUOUS
	return true
}


proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.CNTR_WIDTH { MODELPARAM_VALUE.CNTR_WIDTH PARAM_VALUE.CNTR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CNTR_WIDTH}] ${MODELPARAM_VALUE.CNTR_WIDTH}
}

proc update_MODELPARAM_VALUE.CONTINUOUS { MODELPARAM_VALUE.CONTINUOUS PARAM_VALUE.CONTINUOUS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONTINUOUS}] ${MODELPARAM_VALUE.CONTINUOUS}
}

proc update_MODELPARAM_VALUE.ALWAYS_READY { MODELPARAM_VALUE.ALWAYS_READY PARAM_VALUE.ALWAYS_READY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ALWAYS_READY}] ${MODELPARAM_VALUE.ALWAYS_READY}
}

