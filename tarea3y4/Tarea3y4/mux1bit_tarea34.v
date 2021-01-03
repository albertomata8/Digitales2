`include "AND_tarea34.v"
`include "OR_tarea34.v"
`include "NOT_tarea34.v"

module mux1bit_tarea34(
    output salida,
    input A,
    input B,
    input selector);

    wire and1_a_or1;
    wire and2_a_or1;
    wire not1_a_and1;

    //conexiones
    AND_tarea34 and1 (.A(A), .B(not1_a_and1), .F_and(and1_a_or1));
    AND_tarea34 and2 (.A(B), .B(selector), .F_and(and2_a_or1));
    NOT_tarea34 not1 (.A(selector), .F_not(not1_a_and1));
    OR_tarea34 or1(.A(and1_a_or1), .B(and2_a_or1), .F_or(salida));
    
endmodule