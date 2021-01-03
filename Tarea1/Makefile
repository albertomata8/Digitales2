yosys:
	yosys -p "read_verilog alarma_desc_conductual.v" -p "hierarchy -check -top alarma_desc_conductual" -p show

gtkwave:
	gtkwave alarma.vcd

sed:
	sed 's/alarma_desc_conductual/alarma_desc_conductualsynth/' alarma_desc_conductual.v