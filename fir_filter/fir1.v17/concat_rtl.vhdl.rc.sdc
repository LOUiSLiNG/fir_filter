# written for flow package RTLCompiler 
set sdc_version 1.7 

set_operating_conditions typical
set_load 2.0 [all_outputs]
## driver/slew constraints on inputs
set data_inputs [list {x_rsc_dat[*]} {shift_reg_rsc_zin[*]}]
set_driving_cell -no_design_rule -library NangateOpenCellLibrary -lib_cell BUF_X2 -pin Z $data_inputs
create_clock -name clk -period 1.0 -waveform { 0.0 0.5 } [get_ports {clk}]
set_clock_uncertainty 0.0 [get_clocks {clk}]

create_clock -name virtual_io_clk -period 1.0
## IO TIMING CONSTRAINTS
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {rst}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {x_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {x_rsc_triosy_lz}]
set_max_delay 1.0 -from [all_inputs] -to [all_outputs]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {shift_reg_rsc_zout[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {shift_reg_rsc_lzout}]
set_input_delay -clock [get_clocks {clk}] 0.0 [get_ports {shift_reg_rsc_zin[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {shift_reg_rsc_triosy_lz}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {return_rsc_dat[*]}]
set_output_delay -clock [get_clocks {clk}] 0.0 [get_ports {return_rsc_triosy_lz}]

