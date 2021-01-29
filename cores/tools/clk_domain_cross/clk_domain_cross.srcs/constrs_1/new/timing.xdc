create_clock -name clk [get_ports clk]
set_input_delay -clock clk -max [get_property PERIOD [get_clocks clk]]/2 [get_ports i]