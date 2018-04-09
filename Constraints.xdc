
#------------------------------------------------------------
#---------------------- Clock signal ------------------------
#------------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]



#------------------------------------------------------------
#---------------------- Stepper motor -----------------------
#------------------------------------------------------------

#4 phases
#step motor: Bb
set_property PACKAGE_PIN P18 [get_ports {motor_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_out[0]}]
#step motor: Ab
set_property PACKAGE_PIN N17 [get_ports {motor_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_out[1]}]
#step motor: B
set_property PACKAGE_PIN M18 [get_ports {motor_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_out[2]}]
#step motor: A
set_property PACKAGE_PIN K17 [get_ports {motor_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_out[3]}]

#rotation_duration[1:0]
set_property PACKAGE_PIN T1 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN R2 [get_ports preset]
set_property IOSTANDARD LVCMOS33 [get_ports preset]

set_property PACKAGE_PIN U18 [get_ports restart]
set_property IOSTANDARD LVCMOS33 [get_ports restart]

#direction[1:0]
#set_property PACKAGE_PIN W2 [get_ports {direction[0]}]
# 	set_property IOSTANDARD  LVCMOS33 [get_ports {direction[0]}]
#set_property PACKAGE_PIN U1 [get_ports {direction[1]}]
# 	set_property IOSTANDARD  LVCMOS33 [get_ports {direction[1]}]

#start
#set_property PACKAGE_PIN U18 [get_ports {start}]
#set_property IOSTANDARD  LVCMOS33 [get_ports {start}]


#------------------------------------------------------------
#-------------------- 7 segment display ---------------------
#------------------------------------------------------------
set_property PACKAGE_PIN W7 [get_ports a]
set_property IOSTANDARD LVCMOS33 [get_ports a]
set_property PACKAGE_PIN W6 [get_ports b]
set_property IOSTANDARD LVCMOS33 [get_ports b]
set_property PACKAGE_PIN U8 [get_ports c]
set_property IOSTANDARD LVCMOS33 [get_ports c]
set_property PACKAGE_PIN V8 [get_ports d]
set_property IOSTANDARD LVCMOS33 [get_ports d]
set_property PACKAGE_PIN U5 [get_ports e]
set_property IOSTANDARD LVCMOS33 [get_ports e]
set_property PACKAGE_PIN V5 [get_ports f]
set_property IOSTANDARD LVCMOS33 [get_ports f]
set_property PACKAGE_PIN U7 [get_ports g]
set_property IOSTANDARD LVCMOS33 [get_ports g]
set_property PACKAGE_PIN V7 [get_ports dp]
set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]


set_property PACKAGE_PIN V19 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property PACKAGE_PIN U19 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property PACKAGE_PIN E19 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property PACKAGE_PIN U16 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]



set_property PACKAGE_PIN V13 [get_ports {leds2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds2[3]}]
set_property PACKAGE_PIN V14 [get_ports {leds2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds2[2]}]
set_property PACKAGE_PIN U14 [get_ports {leds2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds2[1]}]
set_property PACKAGE_PIN U15 [get_ports {leds2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds2[0]}]

#------------------------------------------------------------
#---------------------- keyboard matrix ---------------------
#------------------------------------------------------------
set_property PACKAGE_PIN A15 [get_ports {key_row[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_row[0]}]
set_property PACKAGE_PIN A17 [get_ports {key_row[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_row[1]}]
set_property PACKAGE_PIN C15 [get_ports {key_row[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_row[2]}]
set_property PACKAGE_PIN C16 [get_ports {key_row[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_row[3]}]

set_property PACKAGE_PIN A14 [get_ports {key_col[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_col[0]}]
set_property PACKAGE_PIN A16 [get_ports {key_col[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_col[1]}]
set_property PACKAGE_PIN B15 [get_ports {key_col[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_col[2]}]
set_property PACKAGE_PIN B16 [get_ports {key_col[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_col[3]}]
