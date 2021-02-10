# ----------------------------------------------------------------------------
# RTL VHDL output 'rtl.vhdl' vs Untimed C++
#
#    HLS version: 10.5c/896140 Production Release
#       HLS date: Sun Sep  6 22:45:38 PDT 2020
#  Flow Packages: HDL_Tcl 8.0a, SCVerify 10.4.1
#
#   Generated by: dss545@hansolo.poly.edu
# Generated date: Tue Feb 09 19:50:29 EST 2021
#
# ----------------------------------------------------------------------------
# ===================================================
# DEFAULT GOAL is the help target
.PHONY: all
all: help

# ===================================================
# Directories (at the time this makefile was created)
#   MGC_HOME      /opt/mentorgraphics/Catapult_10.5c/Mgc_home
#   PROJECT_HOME  /home/dss545/small_projects/fir_filter/fir_filter
#   SOLUTION_DIR  /home/dss545/small_projects/fir_filter/fir_filter/fir_filter/fir1.v27
#   WORKING_DIR   /home/dss545/small_projects/fir_filter/fir_filter/fir_filter/fir1.v27/.

# ===================================================
# VARIABLES
# 
MGC_HOME          = /opt/mentorgraphics/Catapult_10.5c/Mgc_home
export MGC_HOME

WORK_DIR  = $(CURDIR)
WORK2PROJ = ../..
WORK2SOLN = .
PROJ2WORK = ./fir_filter/fir1.v27
PROJ2SOLN = ./fir_filter/fir1.v27
export WORK_DIR
export WORK2PROJ
export WORK2SOLN
export PROJ2WORK
export PROJ2SOLN

# Variables that can be overridden from the make command line
ifeq "$(INCL_DIRS)" ""
INCL_DIRS                   = ./scverify . ../..
endif
export INCL_DIRS
ifeq "$(STAGE)" ""
STAGE                       = rtl
endif
export STAGE
ifeq "$(NETLIST_LEAF)" ""
NETLIST_LEAF                = rtl
endif
export NETLIST_LEAF
ifeq "$(SIMTOOL)" ""
SIMTOOL                     = msim
endif
export SIMTOOL
ifeq "$(NETLIST)" ""
NETLIST                     = vhdl
endif
export NETLIST
ifeq "$(RTL_NETLIST_FNAME)" ""
RTL_NETLIST_FNAME           = /home/dss545/small_projects/fir_filter/fir_filter/fir_filter/fir1.v27/rtl.vhdl
endif
export RTL_NETLIST_FNAME
ifeq "$(GATE_FNAME_BASE)" ""
GATE_FNAME_BASE             = gate.rc.vhdl
endif
export GATE_FNAME_BASE
ifeq "$(INVOKE_ARGS)" ""
INVOKE_ARGS                 = 
endif
export INVOKE_ARGS
export SCVLIBS
export MODELSIM
TOP_HDL_ENTITY           := fir1
TOP_DU                   := scverify_top
CXX_TYPE                 := gcc
MSIM_SCRIPT              := ./fir_filter/fir1.v27/scverify_msim.tcl
TARGET                   := scverify/$(NETLIST_LEAF)_$(NETLIST)_$(SIMTOOL)
export TOP_HDL_ENTITY
export TARGET

ifeq ($(RECUR),)
ifeq ($(STAGE),mapped)
ifeq ($(RTLTOOL),)
   $(error This makefile requires specifying the RTLTOOL variable on the make command line)
endif
endif
endif
# ===================================================
# Include environment variables set by flow options
include ./ccs_env.mk

# ===================================================
# Include makefile for default commands and variables
include $(MGC_HOME)/shared/include/mkfiles/ccs_default_cmds.mk

SYNTHESIS_FLOWPKG := RTLCompiler
SYN_FLOW          := RTLCompiler
# ===================================================
# SOURCES
# 
# Specify list of Questa SIM libraries to create
HDL_LIB_NAMES = mgc_hls work
# ===================================================
# Simulation libraries required by loaded Catapult libraries or gate simulation
SIMLIBS_V   += 
SIMLIBS_VHD += 
# 
# Specify list of source files - MUST be ordered properly
ifeq ($(STAGE),gate)
ifeq ($(RTLTOOL),)
# Unless overridden on make command line, GATE_*_DEP is the last item in the netlist dependency list
ifeq ($(GATE_VHDL_DEP),)
GATE_VHDL_DEP = ./rtl.vhdl/rtl.vhdl_5.vhdlts
endif
ifeq ($(GATE_VLOG_DEP),)
GATE_VLOG_DEP = 
endif
endif
VHDL_SRC += $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.vhd/ccs_in_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/ccs_out_v1.vhd/ccs_out_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/mgc_io_sync_v2.vhd/mgc_io_sync_v2.vhd.vhdlts ../td_ccore_solutions/ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2_0/rtl.vhdl/rtl.vhdl.vhdlts ../td_ccore_solutions/ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2_0/rtl.vhdl/rtl.vhdl_4.vhdlts $(GATE_VHDL_DEP)
VLOG_SRC +=  $(GATE_VLOG_DEP)
else
VHDL_SRC += $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.vhd/ccs_in_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/ccs_out_v1.vhd/ccs_out_v1.vhd.vhdlts $(MGC_HOME)/pkgs/siflibs/mgc_io_sync_v2.vhd/mgc_io_sync_v2.vhd.vhdlts ../td_ccore_solutions/ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2_0/rtl.vhdl/rtl.vhdl.vhdlts ../td_ccore_solutions/ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2_0/rtl.vhdl/rtl.vhdl_4.vhdlts ./rtl.vhdl/rtl.vhdl_5.vhdlts
VLOG_SRC += 
endif
CXX_SRC  = ../../fir_filter2.c/fir_filter2.c.cxxts ../../fir_filter3.c/fir_filter3.c.cxxts ../../fir_filter_tb2.c/fir_filter_tb2.c.cxxts ./scverify/mc_testbench.cpp/mc_testbench.cpp.cxxts ./scverify/scverify_top.cpp/scverify_top.cpp.cxxts
# Specify RTL synthesis scripts (if any)
RTL_SCRIPT = 

# Specify hold time file name (for verifying synthesized netlists)
HLD_CONSTRAINT_FNAME = top_gate_constraints.cpp

# ===================================================
# GLOBAL OPTIONS
# 
# CXXFLAGS - global C++ options (apply to all C++ compilations) except for include file search paths
CXXFLAGS += -DCATAPAULT -DKEYPAIR -DCCS_SCVERIFY -DSC_INCLUDE_DYNAMIC_PROCESSES -DSC_USE_STD_STRING -DTOP_HDL_ENTITY=$(TOP_HDL_ENTITY) -DCCS_DESIGN_FUNC_fir1 -DCCS_DESIGN_TOP_$(TOP_HDL_ENTITY) -DCCS_MISMATCHED_OUTPUTS_ONLY $(F_WRAP_OPT)
# 
# If the make command line includes a definition of the special variable MC_DEFAULT_TRANSACTOR_LOG
# then define that value for all compilations as well
ifneq "$(MC_DEFAULT_TRANSACTOR_LOG)" ""
CXXFLAGS += -DMC_DEFAULT_TRANSACTOR_LOG=$(MC_DEFAULT_TRANSACTOR_LOG)
endif
# 
# CXX_INCLUDES - include file search paths
CXX_INCLUDES = ./scverify . ../..
# 
# TCL shell
TCLSH_CMD = /opt/mentorgraphics/Catapult_10.5c/Mgc_home/bin/tclsh8.5

# Pass along SCVerify_DEADLOCK_DETECTION option
ifneq "$(SCVerify_DEADLOCK_DETECTION)" "false"
CXXFLAGS += -DDEADLOCK_DETECTION
endif
# ===================================================
# PER SOURCE FILE SPECIALIZATIONS
# 
# Specify source file paths
$(TARGET)/ccs_in_v1.vhd.vhdlts: $(MGC_HOME)/pkgs/siflibs/ccs_in_v1.vhd
$(TARGET)/ccs_out_v1.vhd.vhdlts: $(MGC_HOME)/pkgs/siflibs/ccs_out_v1.vhd
$(TARGET)/mgc_io_sync_v2.vhd.vhdlts: $(MGC_HOME)/pkgs/siflibs/mgc_io_sync_v2.vhd
$(TARGET)/rtl.vhdl.vhdlts: ../td_ccore_solutions/ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2_0/rtl.vhdl
$(TARGET)/rtl.vhdl_4.vhdlts: ../td_ccore_solutions/ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2_0/rtl.vhdl
$(TARGET)/rtl.vhdl_5.vhdlts: ./rtl.vhdl
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): $(dir $(GATE_VHDL_DEP))
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): $(dir $(GATE_VLOG_DEP))
endif
endif
$(TARGET)/fir_filter2.c.cxxts: ../../fir_filter2.c
$(TARGET)/fir_filter3.c.cxxts: ../../fir_filter3.c
$(TARGET)/fir_filter_tb2.c.cxxts: ../../fir_filter_tb2.c
$(TARGET)/mc_testbench.cpp.cxxts: ./scverify/mc_testbench.cpp
$(TARGET)/scverify_top.cpp.cxxts: ./scverify/scverify_top.cpp
# 
# Specify additional C++ options per C++ source by setting CXX_OPTS
$(TARGET)/fir_filter_tb2.c.cxxts: CXX_OPTS=
$(TARGET)/fir_filter3.c.cxxts: CXX_OPTS=
$(TARGET)/scverify_top.cpp.cxxts: CXX_OPTS=
$(TARGET)/mc_testbench.cpp.cxxts: CXX_OPTS=$(F_WRAP_OPT)
$(TARGET)/fir_filter2.c.cxxts: CXX_OPTS=
# 
# Specify dependencies
$(TARGET)/fir_filter2.c.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/fir_filter3.c.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/fir_filter_tb2.c.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/mc_testbench.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts
$(TARGET)/scverify_top.cpp.cxxts: .ccs_env_opts/SCVerify_USE_CCS_BLOCK.ts .ccs_env_opts/SCVerify_DEADLOCK_DETECTION.ts
# 
# Specify compilation library for HDL source
$(TARGET)/ccs_out_v1.vhd.vhdlts: HDL_LIB=mgc_hls
$(TARGET)/rtl.vhdl_4.vhdlts: HDL_LIB=work
$(TARGET)/mgc_io_sync_v2.vhd.vhdlts: HDL_LIB=mgc_hls
$(TARGET)/ccs_in_v1.vhd.vhdlts: HDL_LIB=mgc_hls
$(TARGET)/rtl.vhdl_5.vhdlts: HDL_LIB=work
$(TARGET)/rtl.vhdl.vhdlts: HDL_LIB=work
ifeq ($(STAGE),gate)
ifneq ($(GATE_VHDL_DEP),)
$(TARGET)/$(notdir $(GATE_VHDL_DEP)): HDL_LIB=work
endif
ifneq ($(GATE_VLOG_DEP),)
$(TARGET)/$(notdir $(GATE_VLOG_DEP)): HDL_LIB=work
endif
endif
# 
# Specify additional HDL source compilation options if any
$(TARGET)/ccs_out_v1.vhd.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_4.vhdlts: VHDL_F_OPTS=
$(TARGET)/mgc_io_sync_v2.vhd.vhdlts: VHDL_F_OPTS=
$(TARGET)/ccs_in_v1.vhd.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl_5.vhdlts: VHDL_F_OPTS=
$(TARGET)/rtl.vhdl.vhdlts: VHDL_F_OPTS=
# 
# Specify top design unit for HDL source
$(TARGET)/rtl.vhdl_4.vhdlts: DUT_E=ROM_1i4_1o1_a981173f914bc276eca7f42d28616f0ab2
$(TARGET)/rtl.vhdl_5.vhdlts: DUT_E=fir1
$(TARGET)/rtl.vhdl.vhdlts: DUT_E=ROM_1i4_1o8_67a60b90ba118081e4925479fe39390ab2

# Specify top design unit
$(TARGET)/rtl.vhdl_5.vhdlts: VHDL_TOP=1

ifneq "$(RTLTOOL)" ""
# ===================================================
# Include makefile for RTL synthesis
include $(MGC_HOME)/shared/include/mkfiles/ccs_$(RTLTOOL).mk
else
# ===================================================
# Include makefile for simulator
include $(MGC_HOME)/shared/include/mkfiles/ccs_questasim.mk
endif

