module NOT_tarea34(// Entradas y salidas
    input A,
    output F_not);

     // Tiempo de retraso y logica
    assign #(3:5.25:7.5,3:5.25:7.5) F_not = ~A;
    
endmodule