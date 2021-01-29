# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BUFFER_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COEF_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ORDER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PIECES" -parent ${Page_0}

  ipgui::add_param $IPINST -name "OUTPUT_WIDTH"

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

proc update_PARAM_VALUE.COEF_WIDTH { PARAM_VALUE.COEF_WIDTH } {
	# Procedure called to update COEF_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COEF_WIDTH { PARAM_VALUE.COEF_WIDTH } {
	# Procedure called to validate COEF_WIDTH
	return true
}

proc update_PARAM_VALUE.ORDER { PARAM_VALUE.ORDER } {
	# Procedure called to update ORDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ORDER { PARAM_VALUE.ORDER } {
	# Procedure called to validate ORDER
	return true
}

proc update_PARAM_VALUE.OUTPUT_WIDTH { PARAM_VALUE.OUTPUT_WIDTH } {
	# Procedure called to update OUTPUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_WIDTH { PARAM_VALUE.OUTPUT_WIDTH } {
	# Procedure called to validate OUTPUT_WIDTH
	return true
}

proc update_PARAM_VALUE.PIECES { PARAM_VALUE.PIECES } {
	# Procedure called to update PIECES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PIECES { PARAM_VALUE.PIECES } {
	# Procedure called to validate PIECES
	return true
}


proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.BUFFER_LENGTH { MODELPARAM_VALUE.BUFFER_LENGTH PARAM_VALUE.BUFFER_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_LENGTH}] ${MODELPARAM_VALUE.BUFFER_LENGTH}
}

proc update_MODELPARAM_VALUE.COEF_WIDTH { MODELPARAM_VALUE.COEF_WIDTH PARAM_VALUE.COEF_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COEF_WIDTH}] ${MODELPARAM_VALUE.COEF_WIDTH}
}

proc update_MODELPARAM_VALUE.ORDER { MODELPARAM_VALUE.ORDER PARAM_VALUE.ORDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ORDER}] ${MODELPARAM_VALUE.ORDER}
}

proc update_MODELPARAM_VALUE.PIECES { MODELPARAM_VALUE.PIECES PARAM_VALUE.PIECES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PIECES}] ${MODELPARAM_VALUE.PIECES}
}

proc update_MODELPARAM_VALUE.OUTPUT_WIDTH { MODELPARAM_VALUE.OUTPUT_WIDTH PARAM_VALUE.OUTPUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_WIDTH}] ${MODELPARAM_VALUE.OUTPUT_WIDTH}
}

