parameter NBITS_COUNT = 9;
module cameras(
    input logic clk, reset,
    output logic [NBITS_COUNT-1:0] Count);

  always_ff @(posedge reset or posedge clk) begin
      if(reset)
          Count <= 7;
      else
        if(Count[NBITS_COUNT-1])
          Count <= 7;
        else
          Count <= Count << 3;
    end
endmodule