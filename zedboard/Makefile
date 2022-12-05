#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the cordic program
#
# @desc: 1. "make" or "make fpga" invokes the HW accelerator
#        2. "make fpga_batch" invokes the HW accelerator using batch mode
#        3. "make clean" cleans up the directory


INC_PATH=/usr/include/vivado_hls
CFLAGS = -I${INC_PATH}  -DHLS_NO_XIL_FPO_LIB 

all: sw

sw: pca.cpp pca_test.cpp dut.cpp
	@echo "Compiling & executing cordic software program on ARM ..."
	g++ ${CFLAGS}  pca.cpp pca_test.cpp dut.cpp -o pca-arm
	./pca-arm

fpga: host.cpp
	@echo "Compiling host program & running CORDIC accelerator ..."
	@echo "WARNING: This is not implemented yet ..."
	
clean:
	@echo "Clean up output files"
	@echo "WARNING: This is not implemented yet ..."
	rm -f pca-fpga  *.dat
