iverilogt2:
	iverilog -o tarea2 BancoPruebaTarea2.v 
	vvp tarea2
gtkwavet2:
	gtkwave muxTarea2.vcd

tarea2: iverilogt2 gtkwavet2

iverilog1bit:
	iverilog -o 1bit BancoPrueba1bit_tarea34.v
	vvp 1bit
gtkwave1bit:
	gtkwave probador1bit.vcd

1bit: iverilog1bit gtkwave1bit

iverilog2bit:
	iverilog -o 2bit BancoPrueba2bit_tarea34.v
	vvp 2bit
gtkwave2bit:
	gtkwave probador2bit.vcd

2bit: iverilog2bit gtkwave2bit