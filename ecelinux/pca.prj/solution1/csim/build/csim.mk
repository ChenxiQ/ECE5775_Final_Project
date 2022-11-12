# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2016.2
# Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../pca_test.cpp ../../../../dut.cpp ../../../../pca.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := /opt/xilinx/xilinx_2016.2/Vivado_HLS/2016.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/xilinx/xilinx_2016.2/Vivado_HLS/2016.2/lnx64/tools/gcc/bin
endif
ifndef AP_CLANG_PATH
  AP_CLANG_PATH := /opt/xilinx/xilinx_2016.2/Vivado_HLS/2016.2/lnx64/tools/clang/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

AP_ENABLE_OPTIMIZED := 1
DFLAG += -D__xilinx_ip_top= -DAESL_TB



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/pca_test.o: ../../../../pca_test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pca_test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD  $(IFLAG) $(DFLAG) -O1 -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/pca_test.d

$(ObjDir)/dut.o: ../../../../dut.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../dut.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD  $(IFLAG) $(DFLAG) -O1 -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/dut.d

$(ObjDir)/pca.o: ../../../../pca.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pca.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD  $(IFLAG) $(DFLAG) -O1 -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/pca.d
