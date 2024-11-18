parameter NBITS_DATA = 4;
module REG_PARALELO (
    input logic clk, reset,
    input logic [NBITS_DATA-1:0] data_in,
    output logic [NBITS_DATA-1:0] data_out);

    always_ff @(posedge reset or posedge clk) begin
        if(reset)
            data_out <= 0;
        else
            data_out <= data_in;
    end
    
endmodule



