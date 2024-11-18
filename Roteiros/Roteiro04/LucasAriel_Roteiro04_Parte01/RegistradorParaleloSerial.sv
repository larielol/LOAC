module Registrador_PS (
    input clk,         
    input reset,       
    input [3:0] Din,  
    input Din_serie,   
    input SEL,         
    output reg [3:0] Dout
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Dout <= 4'b0000; 
        end else begin
            if (SEL == 0) begin
                Dout <= Din; 
            end else begin
                Dout <= {Dout[2:0], Din_serie}; 
            end
        end
    end

endmodule
