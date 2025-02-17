#test begin

vlog +define+tb_08=1 -work work                            {sim_model\define\define.v}
vlog +define+tb_08=1 -work work +incdir+{sim_model\define} {sim_model\tb_top.v}

vsim -novopt -t 1ps  -c  -l ./log/vsim_tb_08_report.log work.tb_top -L UNISIMS_VER -L SECUREIP -L SIMPRIMS_VER -L XILINXCORELIB_VER  -L work  work.glbl  -wav ./wave/tb_08.wlf
do wave_do/wave_tb_08.do

run -all