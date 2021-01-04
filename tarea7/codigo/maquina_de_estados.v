module maquina_de_estados(
    input clk,
    input reset,
    input [BUS_SIZE-1:0] data_in,
    output reg error,
    output reg proximo_error,
    output reg [3:0] estado_presente,
    output reg [3:0] proximo_estado
    );
    parameter BUS_SIZE=16;
    parameter WORD_SIZE=4;
    reg [WORD_SIZE-1:0] contador;

    //Estados One-hot
    parameter RESET = 0;    //0000
    parameter FIRST_PKG =1; //0001
    parameter REG_PKG = 2;  //0010
    parameter F_ERR = 4;    //0100
    parameter SEQ_ERR = 8;  //1000

    always @(posedge clk) begin
        if (!reset) begin
            error <= 0;
            estado_presente <= RESET;
            contador <= 0;
        end
        else begin
            estado_presente <= proximo_estado;
            error <= proximo_error;
            if (proximo_error) contador <= 0;
            else contador <= contador + 1;
        end
    end

    always @(*) begin
        proximo_estado = estado_presente;
        proximo_error = error;
        case(estado_presente)
            RESET:begin
                    
                    if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] == 'hF && data_in[0+:WORD_SIZE] == contador) begin
                        proximo_estado = FIRST_PKG;
                        proximo_error = 0 ;
                    end
                    else if (data_in[0+:WORD_SIZE] != contador) begin
                        proximo_estado = SEQ_ERR;
                        proximo_error = 1;
                    end
                    else if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] != 'hF) begin
                        proximo_estado = F_ERR;
                        proximo_error = 1;
                    end
                    if(!reset) begin 
                        proximo_error = 0;
                        proximo_estado = RESET;
                    end
                end 

            FIRST_PKG: begin
                    if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] == 'hF && data_in[0+:WORD_SIZE] == contador) begin
                        proximo_estado = REG_PKG;
                        proximo_error = 0 ;
                    end
                    else if ( data_in[0+:WORD_SIZE] != contador) begin
                        proximo_estado = SEQ_ERR;
                        proximo_error = 1;
                    end
                    else if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] != 'hF) begin
                        proximo_estado = F_ERR;
                        proximo_error = 1;
                    end
                end 
            REG_PKG: begin
                
                     if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] == 'hF && data_in[0+:WORD_SIZE] == contador) begin
                        proximo_estado = REG_PKG;
                        proximo_error = 0 ;
                    end
                    else if (data_in[0+:WORD_SIZE] != contador) begin
                        proximo_estado = SEQ_ERR;
                        proximo_error = 1;
                    end
                    else if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] != 'hF) begin
                        proximo_estado = F_ERR;
                        proximo_error = 1;
                    end
                end

            SEQ_ERR: begin
                    if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] == 'hF && data_in[0+:WORD_SIZE] == contador) begin
                        proximo_estado = FIRST_PKG;
                        proximo_error = 0 ;
                    end
                    else if (data_in[0+:WORD_SIZE] != contador) begin
                        proximo_estado = SEQ_ERR;
                        proximo_error = 1;
                    end
                    else if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] != 'hF) begin
                        proximo_estado = F_ERR;
                        proximo_error = 1;
                    end
                end
            F_ERR: begin
                    if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] == 'hF && data_in[0+:WORD_SIZE] == contador) begin
                        proximo_estado = FIRST_PKG;
                        proximo_error = 0 ;
                    end
                    else if (data_in[0+:WORD_SIZE] != contador) begin
                        proximo_estado = SEQ_ERR;
                        proximo_error = 1;
                    end
                    else if (data_in[BUS_SIZE-1-WORD_SIZE+:WORD_SIZE] != 'hF) begin
                        proximo_estado = F_ERR;
                        proximo_error = 1;
                    end
                end
            default: begin
                proximo_estado = RESET;
            end 
        endcase    
    end
    
endmodule