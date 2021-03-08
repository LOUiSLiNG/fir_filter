//  Catapult Ultra Synthesis 10.5c/896140 (Production Release) Sun Sep  6 22:45:38 PDT 2020
//  
//  Copyright (c) Mentor Graphics Corporation, 1996-2020, All Rights Reserved.
//                        UNPUBLISHED, LICENSED SOFTWARE.
//             CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//                 PROPERTY OF MENTOR GRAPHICS OR ITS LICENSORS
//  
//  Running on Linux dss545@hansolo.poly.edu 3.10.0-1127.18.2.el7.x86_64 x86_64 aol
//  
//  Package information: SIFLIBS v23.5_3.0, HLS_PKGS v23.5_3.0, 
//                       SIF_TOOLKITS v23.5_3.0, SIF_XILINX v23.5_3.0, 
//                       SIF_ALTERA v23.5_3.0, CCS_LIBS v23.5_3.0, 
//                       CDS_PPRO v10.3c_2, CDS_DesigChecker v10.5c, 
//                       CDS_OASYS v19.1_3.7, CDS_PSR v20.1_0.0, 
//                       DesignPad v2.78_1.0
//  
solution new -state initial
solution options defaults
solution options set /Input/TargetPlatform x86_64
solution file add ./fir_filter2.c -type C++
solution file add ./fir_filter3.c -type C++
solution file add ./fir_filter_tb2.c -type C++ -exclude true
solution file add ./fir_filter2.h -type CHEADER
directive set -TIMING_CHECKS true
directive set -PROTOTYPING_ENGINE oasys
directive set -DESIGN_GOAL area
directive set -SPECULATE true
directive set -MERGEABLE true
directive set -REGISTER_THRESHOLD 256
directive set -MEM_MAP_THRESHOLD 32
directive set -LOGIC_OPT false
directive set -FSM_ENCODING none
directive set -FSM_BINARY_ENCODING_THRESHOLD 64
directive set -REG_MAX_FANOUT 0
directive set -NO_X_ASSIGNMENTS true
directive set -SAFE_FSM false
directive set -REGISTER_SHARING_MAX_WIDTH_DIFFERENCE 8
directive set -ASSIGN_OVERHEAD 0
directive set -MUXPATH true
directive set -REALLOC true
directive set -UNROLL no
directive set -IO_MODE super
directive set -CHAN_IO_PROTOCOL use_library
directive set -ARRAY_SIZE 1024
directive set -REGISTER_IDLE_SIGNAL false
directive set -IDLE_SIGNAL {}
directive set -STALL_FLAG false
directive set -TRANSACTION_DONE_SIGNAL true
directive set -DONE_FLAG {}
directive set -READY_FLAG {}
directive set -START_FLAG {}
directive set -RESET_CLEARS_ALL_REGS use_library
directive set -CLOCK_OVERHEAD 20.000000
directive set -CHARACTERIZE_ROM false
directive set -PROTOTYPE_ROM true
directive set -ROM_THRESHOLD 64
directive set -CLUSTER_ADDTREE_IN_WIDTH_THRESHOLD 0
directive set -CLUSTER_ADDTREE_IN_COUNT_THRESHOLD 0
directive set -CLUSTER_OPT_CONSTANT_INPUTS true
directive set -CLUSTER_RTL_SYN false
directive set -CLUSTER_FAST_MODE false
directive set -CLUSTER_TYPE combinational
directive set -PIPELINE_RAMP_UP true
go new
solution design set fir1 -top
directive set -OPT_CONST_MULTS simple_one_adder
directive set -REGISTER_SHARING_LIMIT 1
directive set -DSP_EXTRACTION yes
go analyze
solution library add nangate-45nm_beh -file {$MGC_HOME/pkgs/siflibs/nangate/nangate-45nm_beh.lib} -- -rtlsyntool RTLCompiler
go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 1.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 0.5 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
go assembly
go extract