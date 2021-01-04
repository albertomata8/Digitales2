yosys:
	yosys -s script.ys

sed:
	sed -i '5 s/mux_desc_conductual/sintetizado/' sintetizado.v

iverilog:
	iverilog -o tarea5 BancoPrueba_tarea5.v cmos_cells.v
	vvp tarea5
gtkwave:
	gtkwave mux_tarea5.vcd

all: yosys sed iverilog gtkwave

