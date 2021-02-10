//  Catapult System Level Synthesis 10.6/903117 (Nightly Build) Fri Oct 16 18:33:53 PDT 2020
//  
//  Copyright (c) Mentor Graphics Corporation, 1996-2020, All Rights Reserved.
//                        UNPUBLISHED, LICENSED SOFTWARE.
//             CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//                 PROPERTY OF MENTOR GRAPHICS OR ITS LICENSORS
//  
//  Running on Linux sgarg@orw-ESP-r78 3.10.0-1127.el7.x86_64 x86_64 aol
//  
//  Package information: SIFLIBS v23.6_0.0, HLS_PKGS v23.6_0.0, 
//                       SIF_TOOLKITS v23.6_0.0, SIF_XILINX v23.6_0.0, 
//                       SIF_ALTERA v23.6_0.0, CCS_LIBS v23.6_0.0, 
//                       CDS_PPRO v10.4_2, CDS_DesigChecker v10.6_beta1, 
//                       CDS_OASYS v20.1_2.2, CDS_PSR v20.1_0.0, 
//                       DesignPad v2.78_1.0
//
project new -name auto_fir_filter4 
#project new -name fir_filter  
solution new -state initial
solution options defaults
solution options set /Input/TargetPlatform x86_64
options set Input/CompilerFlags {-DCATAPULT -DKEYPAIR}
#solution options set /Output/GenerateCycleNetlist true
flow package require /SCVerify
solution file add ./fir_filter2.c -type C++
solution file add ./fir_filter3.c -type C++
solution file add ./fir_filter_tb2.c -type C++ -exclude true 
solution file add ./fir_filter2.h -type C++
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
#directive set  -UNROLL yes 
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
directive set -OPT_CONST_MULTS 0
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
directive set -REGISTER_SHARING_LIMIT 1
# directive set -TIMING_CHECKS false

# SGarg: Not part of original directives
directive set DSP_EXTRACTION yes

go analyze
#solution library add mgc_Xilinx-ARTIX-7-2_beh -- -rtlsyntool Vivado -manufacturer Xilinx -family ARTIX-7 -speed -2 -part xc7a200tfbg676-2
#solution library add Xilinx_RAMS
#solution library add Xilinx_ROMS
solution library add nangate-45nm_beh -- -rtlsyntool RTLCompiler -vendor Nangate -technology 045nm

go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 1.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 0.5 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}

go assembly
#directive set /main -PIPELINE_INIT_INTERVAL 11 
#directive set /main/core/main -UNROLL 2
# RAM directives - not part of original directives
#directive set /main/core/indcpa_keypair:a.vec.coeffs:rsc -MAP_TO_MODULE {Xilinx_RAMS.BLOCK_DPRAM_RBW latency=3}
#directive set /main/core/indcpa_keypair:e.vec.coeffs:rsc -MAP_TO_MODULE {Xilinx_RAMS.BLOCK_DPRAM_RBW latency=3}
#directive set /main/core/indcpa_keypair:pkpv.vec.coeffs:rsc -MAP_TO_MODULE {Xilinx_RAMS.BLOCK_DPRAM_RBW latency=3}
#directive set /main/core/indcpa_keypair:skpv.vec.coeffs:rsc -MAP_TO_MODULE {Xilinx_RAMS.BLOCK_DPRAM_RBW latency=3}


go architect
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(4,0,12,0,16,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(12,0,16,1,28,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(13,1,16,0,16,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(5,1,12,0,16,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(15,0,16,1,31,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(16,1,16,1,32,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(12,0,16,1,27,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(13,1,16,1,27,1,1,0,1,3,2) -QUANTITY 20
#directive set /main/core/mgc_Xilinx-ARTIX-7-2_beh.mgc_mul_pipe(11,0,16,1,27,1,1,0,1,3,2) -QUANTITY 20
go allocate
go extract
#flow run /Vivado/synthesize -shell vivado_concat_v/concat_rtl.v.xv
flow run /SCVerify/launch_make ./scverify/Verify_concat_sim_rtl_v_msim.mk {} SIMTOOL=msim sim
project save
project close
quit
