/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* cells_not_processed =  1  *)
(* src = "etapa1_synth.v:1" *)
module etapa1_synth(dataA, dataB, clk, reset_L, sum10, dataA_d, dataB_d, acarreo, reset_L_d);
  (* src = "etapa1_synth.v:14" *)
  wire _00_;
  (* src = "etapa1_synth.v:14" *)
  wire [1:0] _01_;
  (* src = "etapa1_synth.v:14" *)
  wire [2:0] _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  (* src = "etapa1_synth.v:9" *)
  output acarreo;
  (* src = "etapa1_synth.v:4" *)
  input clk;
  (* src = "etapa1_synth.v:2" *)
  input [3:0] dataA;
  (* src = "etapa1_synth.v:7" *)
  output [3:0] dataA_d;
  (* src = "etapa1_synth.v:3" *)
  input [3:0] dataB;
  (* src = "etapa1_synth.v:8" *)
  output [3:0] dataB_d;
  (* src = "etapa1_synth.v:5" *)
  input reset_L;
  (* src = "etapa1_synth.v:10" *)
  output reset_L_d;
  (* src = "etapa1_synth.v:6" *)
  output [1:0] sum10;
  (* src = "etapa1_synth.v:12" *)
  wire [2:0] sumatotal;
  NOT _21_ (
    .A(reset_L),
    .Y(_03_)
  );
  NAND _22_ (
    .A(dataA[0]),
    .B(dataB[0]),
    .Y(_04_)
  );
  NOT _23_ (
    .A(_04_),
    .Y(_05_)
  );
  NOR _24_ (
    .A(dataA[0]),
    .B(dataB[0]),
    .Y(_06_)
  );
  NOT _25_ (
    .A(_06_),
    .Y(_07_)
  );
  NAND _26_ (
    .A(reset_L),
    .B(_07_),
    .Y(_08_)
  );
  NOR _27_ (
    .A(_05_),
    .B(_08_),
    .Y(_02_[0])
  );
  NAND _28_ (
    .A(dataA[1]),
    .B(dataB[1]),
    .Y(_09_)
  );
  NOT _29_ (
    .A(_09_),
    .Y(_10_)
  );
  NOR _30_ (
    .A(dataA[1]),
    .B(dataB[1]),
    .Y(_11_)
  );
  NOT _31_ (
    .A(_11_),
    .Y(_12_)
  );
  NAND _32_ (
    .A(_09_),
    .B(_12_),
    .Y(_13_)
  );
  NOR _33_ (
    .A(_04_),
    .B(_13_),
    .Y(_14_)
  );
  NAND _34_ (
    .A(_04_),
    .B(_13_),
    .Y(_15_)
  );
  NAND _35_ (
    .A(reset_L),
    .B(_15_),
    .Y(_16_)
  );
  NOR _36_ (
    .A(_14_),
    .B(_16_),
    .Y(_02_[1])
  );
  NOR _37_ (
    .A(_10_),
    .B(_14_),
    .Y(_17_)
  );
  NOR _38_ (
    .A(_03_),
    .B(_17_),
    .Y(_02_[2])
  );
  NAND _39_ (
    .A(reset_L),
    .B(sumatotal[0]),
    .Y(_18_)
  );
  NOT _40_ (
    .A(_18_),
    .Y(_01_[0])
  );
  NAND _41_ (
    .A(reset_L),
    .B(sumatotal[1]),
    .Y(_19_)
  );
  NOT _42_ (
    .A(_19_),
    .Y(_01_[1])
  );
  NAND _43_ (
    .A(reset_L),
    .B(sumatotal[2]),
    .Y(_20_)
  );
  NOT _44_ (
    .A(_20_),
    .Y(_00_)
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _45_ (
    .C(clk),
    .D(dataB[0]),
    .Q(dataB_d[0])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _46_ (
    .C(clk),
    .D(dataB[1]),
    .Q(dataB_d[1])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _47_ (
    .C(clk),
    .D(dataB[2]),
    .Q(dataB_d[2])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _48_ (
    .C(clk),
    .D(dataB[3]),
    .Q(dataB_d[3])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _49_ (
    .C(clk),
    .D(_00_),
    .Q(acarreo)
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _50_ (
    .C(clk),
    .D(reset_L),
    .Q(reset_L_d)
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _51_ (
    .C(clk),
    .D(_01_[0]),
    .Q(sum10[0])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _52_ (
    .C(clk),
    .D(_01_[1]),
    .Q(sum10[1])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _53_ (
    .C(clk),
    .D(dataA[0]),
    .Q(dataA_d[0])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _54_ (
    .C(clk),
    .D(dataA[1]),
    .Q(dataA_d[1])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _55_ (
    .C(clk),
    .D(dataA[2]),
    .Q(dataA_d[2])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _56_ (
    .C(clk),
    .D(dataA[3]),
    .Q(dataA_d[3])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _57_ (
    .C(clk),
    .D(_02_[0]),
    .Q(sumatotal[0])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _58_ (
    .C(clk),
    .D(_02_[1]),
    .Q(sumatotal[1])
  );
  (* src = "etapa1_synth.v:14" *)
  DFF _59_ (
    .C(clk),
    .D(_02_[2]),
    .Q(sumatotal[2])
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "etapa2_synth.v:1" *)
module etapa2_synth(dataA_d, dataB_d, clk, reset_L, sum10_d, acarreo_d, sum30_dd);
  (* src = "etapa2_synth.v:12" *)
  wire [3:0] _00_;
  (* src = "etapa2_synth.v:12" *)
  wire [1:0] _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  (* src = "etapa2_synth.v:7" *)
  input acarreo_d;
  (* src = "etapa2_synth.v:4" *)
  input clk;
  (* src = "etapa2_synth.v:2" *)
  input [3:0] dataA_d;
  (* src = "etapa2_synth.v:3" *)
  input [3:0] dataB_d;
  (* src = "etapa2_synth.v:5" *)
  input reset_L;
  (* src = "etapa2_synth.v:6" *)
  input [1:0] sum10_d;
  (* src = "etapa2_synth.v:8" *)
  output [3:0] sum30_dd;
  (* src = "etapa2_synth.v:10" *)
  wire [1:0] sumatotal;
  NOT _29_ (
    .A(reset_L),
    .Y(_02_)
  );
  NOT _30_ (
    .A(dataA_d[3]),
    .Y(_03_)
  );
  NOT _31_ (
    .A(dataB_d[3]),
    .Y(_04_)
  );
  NOT _32_ (
    .A(acarreo_d),
    .Y(_05_)
  );
  NAND _33_ (
    .A(sumatotal[1]),
    .B(reset_L),
    .Y(_06_)
  );
  NAND _34_ (
    .A(sum30_dd[3]),
    .B(_02_),
    .Y(_07_)
  );
  NAND _35_ (
    .A(_06_),
    .B(_07_),
    .Y(_00_[3])
  );
  NAND _36_ (
    .A(reset_L),
    .B(sum10_d[0]),
    .Y(_08_)
  );
  NAND _37_ (
    .A(_02_),
    .B(sum30_dd[0]),
    .Y(_09_)
  );
  NAND _38_ (
    .A(_08_),
    .B(_09_),
    .Y(_00_[0])
  );
  NAND _39_ (
    .A(reset_L),
    .B(sum10_d[1]),
    .Y(_10_)
  );
  NAND _40_ (
    .A(_02_),
    .B(sum30_dd[1]),
    .Y(_11_)
  );
  NAND _41_ (
    .A(_10_),
    .B(_11_),
    .Y(_00_[1])
  );
  NAND _42_ (
    .A(dataA_d[2]),
    .B(dataB_d[2]),
    .Y(_12_)
  );
  NOT _43_ (
    .A(_12_),
    .Y(_13_)
  );
  NOR _44_ (
    .A(dataA_d[2]),
    .B(dataB_d[2]),
    .Y(_14_)
  );
  NOT _45_ (
    .A(_14_),
    .Y(_15_)
  );
  NAND _46_ (
    .A(_12_),
    .B(_15_),
    .Y(_16_)
  );
  NOR _47_ (
    .A(_05_),
    .B(_16_),
    .Y(_17_)
  );
  NAND _48_ (
    .A(_05_),
    .B(_16_),
    .Y(_18_)
  );
  NAND _49_ (
    .A(reset_L),
    .B(_18_),
    .Y(_19_)
  );
  NOR _50_ (
    .A(_17_),
    .B(_19_),
    .Y(_01_[0])
  );
  NOR _51_ (
    .A(_13_),
    .B(_17_),
    .Y(_20_)
  );
  NOR _52_ (
    .A(_03_),
    .B(dataB_d[3]),
    .Y(_21_)
  );
  NOR _53_ (
    .A(dataA_d[3]),
    .B(_04_),
    .Y(_22_)
  );
  NOR _54_ (
    .A(_21_),
    .B(_22_),
    .Y(_23_)
  );
  NAND _55_ (
    .A(_20_),
    .B(_23_),
    .Y(_24_)
  );
  NOR _56_ (
    .A(_20_),
    .B(_23_),
    .Y(_25_)
  );
  NAND _57_ (
    .A(reset_L),
    .B(_24_),
    .Y(_26_)
  );
  NOR _58_ (
    .A(_25_),
    .B(_26_),
    .Y(_01_[1])
  );
  NAND _59_ (
    .A(reset_L),
    .B(sumatotal[0]),
    .Y(_27_)
  );
  NAND _60_ (
    .A(_02_),
    .B(sum30_dd[2]),
    .Y(_28_)
  );
  NAND _61_ (
    .A(_27_),
    .B(_28_),
    .Y(_00_[2])
  );
  (* src = "etapa2_synth.v:12" *)
  DFF _62_ (
    .C(clk),
    .D(_01_[0]),
    .Q(sumatotal[0])
  );
  (* src = "etapa2_synth.v:12" *)
  DFF _63_ (
    .C(clk),
    .D(_01_[1]),
    .Q(sumatotal[1])
  );
  (* src = "etapa2_synth.v:12" *)
  DFF _64_ (
    .C(clk),
    .D(_00_[0]),
    .Q(sum30_dd[0])
  );
  (* src = "etapa2_synth.v:12" *)
  DFF _65_ (
    .C(clk),
    .D(_00_[1]),
    .Q(sum30_dd[1])
  );
  (* src = "etapa2_synth.v:12" *)
  DFF _66_ (
    .C(clk),
    .D(_00_[2]),
    .Q(sum30_dd[2])
  );
  (* src = "etapa2_synth.v:12" *)
  DFF _67_ (
    .C(clk),
    .D(_00_[3]),
    .Q(sum30_dd[3])
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "etapatransicion_synth.v:1" *)
module etapatransicion_synth(dataA_d, dataB_d, sum10, clk, reset_L_d, dataA_dd, dataB_dd, sum10_d, reset_L_dd);
  (* src = "etapatransicion_synth.v:5" *)
  input clk;
  (* src = "etapatransicion_synth.v:2" *)
  input [3:0] dataA_d;
  (* src = "etapatransicion_synth.v:7" *)
  output [3:0] dataA_dd;
  (* src = "etapatransicion_synth.v:3" *)
  input [3:0] dataB_d;
  (* src = "etapatransicion_synth.v:8" *)
  output [3:0] dataB_dd;
  (* src = "etapatransicion_synth.v:6" *)
  input reset_L_d;
  (* src = "etapatransicion_synth.v:10" *)
  output [1:0] reset_L_dd;
  (* src = "etapatransicion_synth.v:4" *)
  input [1:0] sum10;
  (* src = "etapatransicion_synth.v:9" *)
  output [1:0] sum10_d;
  (* src = "etapatransicion_synth.v:12" *)
  DFF _00_ (
    .C(clk),
    .D(reset_L_d),
    .Q(reset_L_dd[0])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _01_ (
    .C(clk),
    .D(sum10[0]),
    .Q(sum10_d[0])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _02_ (
    .C(clk),
    .D(sum10[1]),
    .Q(sum10_d[1])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _03_ (
    .C(clk),
    .D(dataA_d[0]),
    .Q(dataA_dd[0])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _04_ (
    .C(clk),
    .D(dataA_d[1]),
    .Q(dataA_dd[1])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _05_ (
    .C(clk),
    .D(dataA_d[2]),
    .Q(dataA_dd[2])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _06_ (
    .C(clk),
    .D(dataA_d[3]),
    .Q(dataA_dd[3])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _07_ (
    .C(clk),
    .D(dataB_d[0]),
    .Q(dataB_dd[0])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _08_ (
    .C(clk),
    .D(dataB_d[1]),
    .Q(dataB_dd[1])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _09_ (
    .C(clk),
    .D(dataB_d[2]),
    .Q(dataB_dd[2])
  );
  (* src = "etapatransicion_synth.v:12" *)
  DFF _10_ (
    .C(clk),
    .D(dataB_d[3]),
    .Q(dataB_dd[3])
  );
  assign reset_L_dd[1] = 1'h0;
endmodule

(* cells_not_processed =  1  *)
(* src = "identificador_synth.v:1" *)
module identificador_synth(clk, idx, idx_d);
  (* src = "identificador_synth.v:2" *)
  input clk;
  (* src = "identificador_synth.v:3" *)
  input [3:0] idx;
  (* src = "identificador_synth.v:4" *)
  output [3:0] idx_d;
  (* src = "identificador_synth.v:6" *)
  DFF _0_ (
    .C(clk),
    .D(idx[0]),
    .Q(idx_d[0])
  );
  (* src = "identificador_synth.v:6" *)
  DFF _1_ (
    .C(clk),
    .D(idx[1]),
    .Q(idx_d[1])
  );
  (* src = "identificador_synth.v:6" *)
  DFF _2_ (
    .C(clk),
    .D(idx[2]),
    .Q(idx_d[2])
  );
  (* src = "identificador_synth.v:6" *)
  DFF _3_ (
    .C(clk),
    .D(idx[3]),
    .Q(idx_d[3])
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "identificador_synth2.v:1" *)
module identificador_synth2(clk, idx_transicion2, idx_dd);
  (* src = "identificador_synth2.v:2" *)
  input clk;
  (* src = "identificador_synth2.v:4" *)
  output [3:0] idx_dd;
  (* src = "identificador_synth2.v:3" *)
  input [3:0] idx_transicion2;
  (* src = "identificador_synth2.v:6" *)
  DFF _0_ (
    .C(clk),
    .D(idx_transicion2[0]),
    .Q(idx_dd[0])
  );
  (* src = "identificador_synth2.v:6" *)
  DFF _1_ (
    .C(clk),
    .D(idx_transicion2[1]),
    .Q(idx_dd[1])
  );
  (* src = "identificador_synth2.v:6" *)
  DFF _2_ (
    .C(clk),
    .D(idx_transicion2[2]),
    .Q(idx_dd[2])
  );
  (* src = "identificador_synth2.v:6" *)
  DFF _3_ (
    .C(clk),
    .D(idx_transicion2[3]),
    .Q(idx_dd[3])
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "identificador_synth_completo.v:6" *)
module identificador_synth_completo(clk, idx, idx_dd);
  (* src = "identificador_synth_completo.v:7" *)
  input clk;
  (* src = "identificador_synth_completo.v:8" *)
  input [3:0] idx;
  (* src = "identificador_synth_completo.v:11" *)
  wire [3:0] idx_d;
  (* src = "identificador_synth_completo.v:9" *)
  output [3:0] idx_dd;
  (* src = "identificador_synth_completo.v:12" *)
  wire [3:0] idx_transicion;
  (* src = "identificador_synth_completo.v:13" *)
  wire [3:0] idx_transicion2;
  (* module_not_derived = 32'd1 *)
  (* src = "identificador_synth_completo.v:15" *)
  identificador_synth i1 (
    .clk(clk),
    .idx(idx),
    .idx_d(idx_d)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "identificador_synth_completo.v:35" *)
  identificador_synth2 i2 (
    .clk(clk),
    .idx_dd(idx_dd),
    .idx_transicion2(idx_transicion2)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "identificador_synth_completo.v:22" *)
  identificador_synthtransicion it (
    .clk(clk),
    .idx_d(idx_d),
    .idx_transicion(idx_transicion)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "identificador_synth_completo.v:28" *)
  identificador_synthtransicion2 it2 (
    .clk(clk),
    .idx_transicion(idx_transicion),
    .idx_transicion2(idx_transicion2)
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "identificador_synthtransicion.v:1" *)
module identificador_synthtransicion(clk, idx_d, idx_transicion);
  (* src = "identificador_synthtransicion.v:2" *)
  input clk;
  (* src = "identificador_synthtransicion.v:3" *)
  input [3:0] idx_d;
  (* src = "identificador_synthtransicion.v:4" *)
  output [3:0] idx_transicion;
  (* src = "identificador_synthtransicion.v:6" *)
  DFF _0_ (
    .C(clk),
    .D(idx_d[0]),
    .Q(idx_transicion[0])
  );
  (* src = "identificador_synthtransicion.v:6" *)
  DFF _1_ (
    .C(clk),
    .D(idx_d[1]),
    .Q(idx_transicion[1])
  );
  (* src = "identificador_synthtransicion.v:6" *)
  DFF _2_ (
    .C(clk),
    .D(idx_d[2]),
    .Q(idx_transicion[2])
  );
  (* src = "identificador_synthtransicion.v:6" *)
  DFF _3_ (
    .C(clk),
    .D(idx_d[3]),
    .Q(idx_transicion[3])
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "identificador_synthtransicion2.v:1" *)
module identificador_synthtransicion2(clk, idx_transicion, idx_transicion2);
  (* src = "identificador_synthtransicion2.v:2" *)
  input clk;
  (* src = "identificador_synthtransicion2.v:3" *)
  input [3:0] idx_transicion;
  (* src = "identificador_synthtransicion2.v:4" *)
  output [3:0] idx_transicion2;
  (* src = "identificador_synthtransicion2.v:6" *)
  DFF _0_ (
    .C(clk),
    .D(idx_transicion[0]),
    .Q(idx_transicion2[0])
  );
  (* src = "identificador_synthtransicion2.v:6" *)
  DFF _1_ (
    .C(clk),
    .D(idx_transicion[1]),
    .Q(idx_transicion2[1])
  );
  (* src = "identificador_synthtransicion2.v:6" *)
  DFF _2_ (
    .C(clk),
    .D(idx_transicion[2]),
    .Q(idx_transicion2[2])
  );
  (* src = "identificador_synthtransicion2.v:6" *)
  DFF _3_ (
    .C(clk),
    .D(idx_transicion[3]),
    .Q(idx_transicion2[3])
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "sum_pipe_synth.v:4" *)
module sum_pipe_synth(dataA, dataB, clk, reset_L, sum30_dd);
  (* src = "sum_pipe_synth.v:14" *)
  wire acarreo;
  (* src = "sum_pipe_synth.v:7" *)
  input clk;
  (* src = "sum_pipe_synth.v:5" *)
  input [3:0] dataA;
  (* src = "sum_pipe_synth.v:16" *)
  wire [3:0] dataA_d;
  (* src = "sum_pipe_synth.v:18" *)
  wire [3:0] dataA_dd;
  (* src = "sum_pipe_synth.v:6" *)
  input [3:0] dataB;
  (* src = "sum_pipe_synth.v:17" *)
  wire [3:0] dataB_d;
  (* src = "sum_pipe_synth.v:19" *)
  wire [3:0] dataB_dd;
  (* src = "sum_pipe_synth.v:8" *)
  input reset_L;
  (* src = "sum_pipe_synth.v:15" *)
  wire reset_L_d;
  (* src = "sum_pipe_synth.v:38" *)
  wire reset_L_dd;
  (* src = "sum_pipe_synth.v:12" *)
  wire [1:0] sum10;
  (* src = "sum_pipe_synth.v:13" *)
  wire [1:0] sum10_d;
  (* src = "sum_pipe_synth.v:9" *)
  output [3:0] sum30_dd;
  (* module_not_derived = 32'd1 *)
  (* src = "sum_pipe_synth.v:21" *)
  etapa1_synth e1 (
    .acarreo(acarreo),
    .clk(clk),
    .dataA(dataA),
    .dataA_d(dataA_d),
    .dataB(dataB),
    .dataB_d(dataB_d),
    .reset_L(reset_L),
    .reset_L_d(reset_L_d),
    .sum10(sum10)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "sum_pipe_synth.v:46" *)
  etapa2_synth e2 (
    .acarreo_d(acarreo),
    .clk(clk),
    .dataA_d(dataA_dd),
    .dataB_d(dataB_dd),
    .reset_L(reset_L_dd),
    .sum10_d(sum10_d),
    .sum30_dd(sum30_dd)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "sum_pipe_synth.v:33" *)
  etapatransicion_synth et (
    .clk(clk),
    .dataA_d(dataA_d),
    .dataA_dd(dataA_dd),
    .dataB_d(dataB_d),
    .dataB_dd(dataB_dd),
    .reset_L_d(reset_L_d),
    .reset_L_dd(reset_L_dd),
    .sum10(sum10),
    .sum10_d(sum10_d)
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "sumador_synth.v:3" *)
module sumador_synth(dataA, dataB, clk, reset_L, idx, sum30_dd, idx_dd);
  (* src = "sumador_synth.v:6" *)
  input clk;
  (* src = "sumador_synth.v:4" *)
  input [3:0] dataA;
  (* src = "sumador_synth.v:5" *)
  input [3:0] dataB;
  (* src = "sumador_synth.v:8" *)
  input [3:0] idx;
  (* src = "sumador_synth.v:10" *)
  output [3:0] idx_dd;
  (* src = "sumador_synth.v:7" *)
  input reset_L;
  (* src = "sumador_synth.v:9" *)
  output [3:0] sum30_dd;
  (* module_not_derived = 32'd1 *)
  (* src = "sumador_synth.v:22" *)
  identificador_synth_completo identificador_synthc (
    .clk(clk),
    .idx(idx),
    .idx_dd(idx_dd)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "sumador_synth.v:13" *)
  sum_pipe_synth pipe (
    .clk(clk),
    .dataA(dataA),
    .dataB(dataB),
    .reset_L(reset_L),
    .sum30_dd(sum30_dd)
  );
endmodule