# Clock Source
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]



# User LEDs
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {led_0[0]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {led_0[1]}]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {led_0[2]}]
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {led_0[3]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {led_1[0]}]
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports {led_1[1]}]
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports {led_1[2]}]
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33} [get_ports {led_1[3]}]

# User DIP Switches

set_property -dict {PACKAGE_PIN F22 IOSTANDARD LVCMOS33} [get_ports {rst}]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports {up_down_0}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS33} [get_ports {up_down_1}]
# set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS25} [get_ports {sws_8bits_tri_i[3]}]
# set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS25} [get_ports {sws_8bits_tri_i[4]}]
# set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS25} [get_ports {sws_8bits_tri_i[5]}]
# set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS25} [get_ports {sws_8bits_tri_i[6]}]
# set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS25} [get_ports {sws_8bits_tri_i[7]}]

# User Push Buttons
# set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS25} [get_ports {rst}]
# set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS25} [get_ports {btns_5bits_tri_i[1]}]
# set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS25} [get_ports {btns_5bits_tri_i[2]}]
# set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS25} [get_ports {btns_5bits_tri_i[3]}]
#set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS25} [get_ports {up_down_0}]


#set_property PACKAGE_PIN V7 [get_ports dp]
	#et_property IOSTANDARD LVCMOS25 [get_ports dp]
