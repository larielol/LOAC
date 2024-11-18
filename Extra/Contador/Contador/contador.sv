// CONTADOR
parameter NBITS_COUNT = 3;
module contador(
    input logic clk, reset,
    output logic [NBITS_COUNT-1:0] Count);

    always_ff @(posedge reset or posedge clk) begin
        if(reset)
        Count <= 0;
        else 
        Count <= Count + 1;    		   
  end
  
endmodule