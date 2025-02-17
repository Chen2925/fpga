#test begin

vlog +define+tb_02=1 -work work                            {sim_model\define\define.v}
vlog +define+tb_02=1 -work work +incdir+{sim_model\define} {sim_model\tb_top.v}

vsim -t 1ps  -c  -l ./log/vsim_tb_02_report.log work.tb_top -L fifo_generator_v13_2_5 -L blk_mem_gen_v8_4_4 -L UNISIMS_VER -L SECUREIP -L SIMPRIMS_VER  -L work  -voptargs=+acc  work.glbl  -wav ./wave/tb_02.wlf
do wave_do/wave_tb_02.do

run -all