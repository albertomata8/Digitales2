module AND_tarea34(// Entradas y salidas
    input A,
    input B,
    output F_and);

    // Tiempo de retraso y logica
    assign #(1:5:10,1:5:10) F_and = A&B;

endmodule



