# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BUFFER_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DELAYS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAMETERS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PARAM_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.BUFFER_LENGTH { PARAM_VALUE.BUFFER_LENGTH } {
	# Procedure called to update BUFFER_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFER_LENGTH { PARAM_VALUE.BUFFER_LENGTH } {
	# Procedure called to validate BUFFER_LENGTH
	return true
}

proc update_PARAM_VALUE.DELAYS { PARAM_VALUE.DELAYS } {
	# Procedure called to update DELAYS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DELAYS { PARAM_VALUE.DELAYS } {
	# Procedure called to validate DELAYS
	return true
}

proc update_PARAM_VALUE.MAT_WIDTH { PARAM_VALUE.MAT_WIDTH } {
	# Procedure called to update MAT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAT_WIDTH { PARAM_VALUE.MAT_WIDTH } {
	# Procedure called to validate MAT_WIDTH
	return true
}

proc update_PARAM_VALUE.OUTPUT_WIDTH { PARAM_VALUE.OUTPUT_WIDTH } {
	# Procedure called to update OUTPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_WIDTH { PARAM_VALUE.OUTPUT_WIDTH } {
	# Procedure called to validate OUTPUT_WIDTH
	return true
}

proc update_PARAM_VALUE.PARAMETERS { PARAM_VALUE.PARAMETERS } {
	# Procedure called to update PARAMETERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAMETERS { PARAM_VALUE.PARAMETERS } {
	# Procedure called to validate PARAMETERS
	return true
}

proc update_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to update PARAM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PARAM_WIDTH { PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to validate PARAM_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.PARAMETERS { MODELPARAM_VALUE.PARAMETERS PARAM_VALUE.PARAMETERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAMETERS}] ${MODELPARAM_VALUE.PARAMETERS}
}

proc update_MODELPARAM_VALUE.PARAM_WIDTH { MODELPARAM_VALUE.PARAM_WIDTH PARAM_VALUE.PARAM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PARAM_WIDTH}] ${MODELPARAM_VALUE.PARAM_WIDTH}
}

proc update_MODELPARAM_VALUE.MAT_WIDTH { MODELPARAM_VALUE.MAT_WIDTH PARAM_VALUE.MAT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAT_WIDTH}] ${MODELPARAM_VALUE.MAT_WIDTH}
}

proc update_MODELPARAM_VALUE.OUTPUT_WIDTH { MODELPARAM_VALUE.OUTPUT_WIDTH PARAM_VALUE.OUTPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_WIDTH}] ${MODELPARAM_VALUE.OUTPUT_WIDTH}
}

proc update_MODELPARAM_VALUE.DELAYS { MODELPARAM_VALUE.DELAYS PARAM_VALUE.DELAYS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DELAYS}] ${MODELPARAM_VALUE.DELAYS}
}

proc update_MODELPARAM_VALUE.BUFFER_LENGTH { MODELPARAM_VALUE.BUFFER_LENGTH PARAM_VALUE.BUFFER_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_LENGTH}] ${MODELPARAM_VALUE.BUFFER_LENGTH}
}

