create_project prj -part xc7z020clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
source "/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/syn/verilog/dut_ap_fadd_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dut_ap_fadd_3_full_dsp_32]]
}
source "/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/syn/verilog/dut_ap_faddfsub_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dut_ap_faddfsub_3_full_dsp_32]]
}
source "/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/syn/verilog/dut_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dut_ap_fmul_2_max_dsp_32]]
}
source "/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/syn/verilog/dut_ap_fdiv_14_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dut_ap_fdiv_14_no_dsp_32]]
}
source "/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/syn/verilog/dut_ap_frsqrt_9_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dut_ap_frsqrt_9_full_dsp_32]]
}
source "/home/yx388/ece5775/final_project/ECE5775_Final_Project/ecelinux/pca.prj/solution1/syn/verilog/dut_ap_sitofp_4_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips dut_ap_sitofp_4_no_dsp_32]]
}
