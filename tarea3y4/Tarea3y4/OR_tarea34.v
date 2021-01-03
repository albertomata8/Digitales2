module OR_tarea34(// Entradas y salidas
    input A,
    input B,
    output F_or);
    
    // Tiempo de retraso y logica
    assign #(2.8:5.4:8,2.8:5.4:8) F_or = A|B;

endmodule