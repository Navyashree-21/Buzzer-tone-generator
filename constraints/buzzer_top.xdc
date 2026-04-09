## 100 MHz onboard clock
set_property PACKAGE_PIN E3 [get_ports clk_100mhz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100mhz]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_100mhz]

## Reset button (Center button)
set_property PACKAGE_PIN N17 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

## Mode select switches
set_property PACKAGE_PIN J15 [get_ports {mode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mode[0]}]

set_property PACKAGE_PIN L16 [get_ports {mode[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {mode[1]}]

## Buzzer output → PMOD JA1
set_property PACKAGE_PIN C17 [get_ports buzzer_out]
set_property IOSTANDARD LVCMOS33 [get_ports buzzer_out]
