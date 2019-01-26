open_project madd
set_top madd
add_files D:/xilinx/SDSoC_IDE/workspace/muladd/src/madd.cpp -cflags "-ID:/xilinx/SDSoC_IDE/workspace/muladd/src -Wall -O3 -fmessage-length=0 -D __SDSCC__ -m64 -D HLS_NO_XIL_FPO_LIB -I D:/xilinx/SDSoC_IDE/SDx/2018.3/target/aarch64-linux/include -ID:/xilinx/SDSoC_IDE/workspace/muladd/src -D __SDSVHLS__ -D __SDSVHLS_SYNTHESIS__ -I D:/xilinx/SDSoC_IDE/workspace/muladd/Release -w"
open_solution "solution" -reset
set_part { xczu7ev-ffvc1156-2-e }
# synthesis directives
create_clock -period 5.000000
config_sdx -target sds
config_interface -m_axi_addr64
config_rtl -reset_level low
source D:/xilinx/SDSoC_IDE/workspace/muladd/Release/_sds/vhls/madd.tcl
# end synthesis directives
config_rtl -prefix a0_
csynth_design
export_design -ipname madd
exit
