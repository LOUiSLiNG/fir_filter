#
# Created by 
#   ../bin/Linux-x86_64-O/oasys 19.1-s007 on Wed Feb  3 19:36:08 2021
# (C) Mentor Graphics Corporation
#
set_units -time ns -capacitance ff -resistance kohm -power nW -voltage V -current mA
create_clock -period 1 -waveform {0 0.5} -name virtual_io_clk 
set_max_delay -from [list [get_ports {I_1[0]}] [get_ports {I_1[1]}] [get_ports {I_1[2]}] [get_ports {I_1[3]}]]  -to [get_ports O_1] 1.0000
set_max_delay -from [list [get_ports {I_1[0]}] [get_ports {I_1[1]}] [get_ports {I_1[2]}] [get_ports {I_1[3]}]]  -to [get_ports O_1] 1.0000
set_load 2 [get_ports O_1]
set_driving_cell -lib_cell BUF_X2 [get_ports {I_1[3]}]
set_driving_cell -lib_cell BUF_X2 [get_ports {I_1[2]}]
set_driving_cell -lib_cell BUF_X2 [get_ports {I_1[1]}]
set_driving_cell -lib_cell BUF_X2 [get_ports {I_1[0]}]
set_input_delay 0 -clock virtual_io_clk [get_ports {I_1[3]}]
set_input_delay 0 -clock virtual_io_clk [get_ports {I_1[2]}]
set_input_delay 0 -clock virtual_io_clk [get_ports {I_1[1]}]
set_input_delay 0 -clock virtual_io_clk [get_ports {I_1[0]}]
set_output_delay 0 -clock virtual_io_clk [get_ports O_1]
set_operating_conditions  typical
