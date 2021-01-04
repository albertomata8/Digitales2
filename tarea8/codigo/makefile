all: iverilog gtkwave
iverilog:
	iverilog -o prueba.vvp BancoPrueba.v  cmos_cells.v
	vvp prueba.vvp

gtkwave:
	gtkwave probador.vcd
