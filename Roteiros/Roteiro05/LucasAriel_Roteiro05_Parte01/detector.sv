parameter NBITS = 3;
module detector4bits(input logic clk, reset, in_bit,
                    output logic out_bit);
  
  enum logic [NBITS-1:0] {A, B, C, D, E} estado; 
  
  always_ff @(posedge clk) begin
    if (reset)
      estado <= A;
    else
      unique case(estado)
        A:
          if (in_bit == 0)
            estado <= A;
         else
           estado <= B;
        B:
          if (in_bit == 0)
            estado <= A;
         else
           estado <= C;
        C:
          if (in_bit == 0)
            estado <= A;
         else
           estado <= D;
        D:
          if (in_bit == 0)
            estado <= A;
         else
           estado <= E;
        E:
          if (in_bit == 0)
            estado <= A;
         else
           estado <= E;
      endcase
  end
  
  always_comb out_bit <= (estado == E);
endmodule