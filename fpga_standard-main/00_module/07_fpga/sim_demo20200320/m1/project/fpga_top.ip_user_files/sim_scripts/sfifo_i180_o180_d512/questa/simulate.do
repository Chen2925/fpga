onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib sfifo_i180_o180_d512_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {sfifo_i180_o180_d512.udo}

run -all

quit -force
