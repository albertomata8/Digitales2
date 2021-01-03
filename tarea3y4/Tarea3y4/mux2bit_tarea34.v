`include "mux1bit_tarea34.v"

module mux2bit_tarea34(

    input [0:1] A,
    input [0:1] B,
    input selector,
    output [0:1] salida);

    //conexiones
    mux1bit_tarea34 mux1 (.A(A[0]), .B(B[0]), .selector(selector), .salida(salida[0]));
    mux1bit_tarea34 mux2 (.A(A[1]), .B(B[1]), .selector(selector), .salida(salida[1]));
    
endmodule