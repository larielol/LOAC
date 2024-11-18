parameter NBITS = 8;
module gerador (
  input logic b0, b1, b2, b3, b4, b5, b6, b7,
  output logic SAIDA);
  
  always_comb begin
    SAIDA <= b0 ^ b1 ^ b2 ^ b3 ^ b4 ^ b5 ^ b6 ^ b7;
  end
  
endmodule