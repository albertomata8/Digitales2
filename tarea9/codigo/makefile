all: yosys sed iverilog gtkwave
iverilog:
	iverilog -o prueba.vvp BancoPruebas.v  cmos_cells.v
	vvp prueba.vvp

gtkwave:
	gtkwave probador.vcd
yosys:
	yosys -s sumador.ys
sed:
	sed -i "s/etapa1/etapa1_synth/g" sumador_synth.v
	sed -i "s/etapatransicion/etapatransicion_synth/g" sumador_synth.v
	sed -i "s/etapa2/etapa2_synth/g" sumador_synth.v
	sed -i "s/identificador/identificador_synth/g" sumador_synth.v
	sed -i "s/identificador2/identificador2_synth/g" sumador_synth.v
	sed -i "s/identificadortransicion/identificadortransicion_synth/g" sumador_synth.v
	sed -i "s/identificadortransicion2/identificadortransicion2_synth/g" sumador_synth.v
	sed -i "s/identificador_completo/identificador_completo_synth/g" sumador_synth.v
	sed -i "s/sum_pipe/sum_pipe_synth/g" sumador_synth.v
	sed -i "s/sumador/sumador_synth/g" sumador_synth.v