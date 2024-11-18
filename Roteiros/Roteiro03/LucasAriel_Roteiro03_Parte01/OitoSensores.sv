// Write your modules here!
module mux_4bits (
    input logic [3:0] S0, S1, S2, S3, S4, S5, S6, S7,
    input logic [2:0] SEL,
    output logic [3:0] SAIDA, SENSOR);
  
    always_comb begin
    
        case (SEL)
            0:
                begin
                    SAIDA <= S0;
                end
            1:
                begin
                    SAIDA <= S1;
                end
            2:
                begin
                    SAIDA <= S2;
                end
            3:
                begin
                    SAIDA <= S3;
                end
            4:
                begin
                    SAIDA <= S4;
                end
            5:
                begin
                    SAIDA <= S5;
                end
            6:
                begin
                    SAIDA <= S6;
                end
            7:
                begin
                    SAIDA <= S7;
                end
        endcase
        SEL <= SENSOR;
    end
endmodule