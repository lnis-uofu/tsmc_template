###################################################################

# Created by write_sdc on Tue Nov 9 19:11:59 2021

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
create_clock [get_ports clk]  -period 6  -waveform {0 3}
