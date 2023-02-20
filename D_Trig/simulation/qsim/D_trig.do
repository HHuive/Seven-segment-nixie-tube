onerror {quit -f}
vlib work
vlog -work work D_trig.vo
vlog -work work D_trig.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.D_trig_vlg_vec_tst
vcd file -direction D_trig.msim.vcd
vcd add -internal D_trig_vlg_vec_tst/*
vcd add -internal D_trig_vlg_vec_tst/i1/*
add wave /*
run -all
