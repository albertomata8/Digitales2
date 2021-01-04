all: yosys sed iverilog gtkwave
iverilog:
	iverilog -o prueba.vvp bancopruebas.v  cmos_cells.v
	vvp prueba.vvp

gtkwave:
	gtkwave probador.vcd
	
yosys:
	yosys -s box_bus_script.ys
	yosys -s m_d_e_script.ys

sed:
	sed -i 's/box_bus/box_bus_sintetizado/' box_bus_sintetizado.v
	sed -i 's/maquina_de_estados/maquina_de_estados_sintetizado/' maquina_de_estados_sintetizado.v

	




    
