module contador_gray(
        input reset_L,
        input clk,
        input enable,
        output reg [4:0] salida_gray_no_error
    );
    reg [4:0] contador;

    always @(posedge clk)begin
        if (!reset_L) begin
            salida_gray_no_error [4:0] <= 0;
            contador [4:0] <= 0;
        end 
        else begin
            if (!enable)begin
                salida_gray_no_error [4:0]<= 0; 
                contador [4:0] <= 0;
            end
            else begin
                salida_gray_no_error [4:4]<= contador[4:4];
                salida_gray_no_error [3:3]<= contador[4:4]+contador[3:3];
                salida_gray_no_error [2:2]<= contador[3:3]+contador[2:2];
                salida_gray_no_error [1:1]<= contador[2:2]+contador[1:1];
                salida_gray_no_error [0:0]<= contador[1:1]+contador[0:0];    
            end
            contador<= contador+1;
        end
    end
endmodule