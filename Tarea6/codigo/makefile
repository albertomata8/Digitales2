yosys1:
	yosys -s script2a1_2b.ys

sed1:
	sed -i '5 s/mux2a1_2b_desc_conductual/sintetizado2a1_2b/' sintetizado2a1_2b.v

iverilog1:
	iverilog -o tarea6 BancoPrueba2a1_2b.v cmos_cells.v
	vvp tarea6
gtkwave1:
	gtkwave mux2a1_2b.vcd

all1: yosys1 sed1 iverilog1 gtkwave1

yosys2:
	yosys -s script2a1_4b.ys

sed2:
	sed -i '4 s/mux2a1_2b_desc_conductual/sintetizado2a1_2b/' sintetizado2a1_4b.v
	sed -i '174 s/mux2a1_4b_desc_conductual/sintetizado2a1_4b/' sintetizado2a1_4b.v

iverilog2:
	iverilog -o tarea6 BancoPrueba2a1_4b.v cmos_cells.v
	vvp tarea6
gtkwave2:
	gtkwave mux2a1_4b.vcd

all2: yosys2 sed2 iverilog2 gtkwave2

yosys3:
	yosys -s script4a1_4b.ys

sed3:
	sed -i '4 s/mux2a1_2b_desc_conductual/sintetizado2a1_2b/' sintetizado4a1_4b.v
	sed -i '173 s/mux2a1_4b_desc_conductual/sintetizado2a1_4b/' sintetizado4a1_4b.v
	sed -i '222 s/mux4a1_4b_desc_conductual/sintetizado4a1_4b/' sintetizado4a1_4b.v

iverilog3:
	iverilog -o tarea6 BancoPrueba4a1_4b.v cmos_cells.v
	vvp tarea6
gtkwave3:
	gtkwave mux4a1_4b.vcd

all3: yosys3 sed3 iverilog3 gtkwave3