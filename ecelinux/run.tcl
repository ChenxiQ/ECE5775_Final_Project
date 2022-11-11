#=============================================================================
# run_baseline.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline pca design.

# Project name
set hls_prj pca.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files pca.cpp
add_files dut.cpp
add_files -tb pca_test.cpp
add_files -tb data

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###


############################################

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
#cosim_design
exit
