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
#add_files pca.cpp
add_files dut.cpp
add_files -tb pca_test.cpp
add_files -tb data

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###

set_directive_inline -off "vm2x1_base"
##set_directive_allocation -limit 1 -type function "svd_pairs" vm2x1_base

##set_directive_pipeline svd_alt/svd_rd_1
##set_directive_pipeline svd_alt/svd_rd_2

set_directive_pipeline svd_alt/rd_buffer
set_directive_pipeline svd_alt/svd_rd_diag
set_directive_pipeline svd_alt/svd_calc_diag
set_directive_pipeline svd_alt/svd_wb_diag
set_directive_pipeline svd_alt/svd_rd_off_r
set_directive_pipeline svd_alt/svd_calc_off_r
set_directive_pipeline svd_alt/svd_wb_off_r
set_directive_pipeline svd_alt/svd_rd_off_c
set_directive_pipeline svd_alt/svd_calc_off_c
set_directive_pipeline svd_alt/svd_wb_off_c
set_directive_pipeline svd_alt/wb_buffer

#set_directive_array_partition svd_alt output -type cyclic -factor 16
#set_directive_array_partition svd_alt output -type cyclic -factor 16

#set_directive_dependence svd_alt/svd_calc_1 -dependent false
#set_directive_dependence svd_alt/svd_calc_2 -dependent false

############################################

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
cosim_design
exit
