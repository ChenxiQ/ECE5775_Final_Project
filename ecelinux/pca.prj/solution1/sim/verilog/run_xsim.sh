
xelab xil_defaultlib.apatb_dut_top -prj dut.prj --initfile "/opt/xilinx/xilinx_2016.2/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s dut 
xsim --noieeewarnings dut -tclbatch dut.tcl

