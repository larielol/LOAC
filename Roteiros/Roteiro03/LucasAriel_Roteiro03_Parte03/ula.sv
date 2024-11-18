parameter X = 2;
parameter Y = 8;
module ULA(
  input logic [X - 1:0] F,
  input logic signed [Y - 1:0] A, B,
  output logic signed [Y - 1:0] SAIDA,
  output logic FLAG_O
);

always_comb begin
  case(F)
    2'b00:
      SAIDA = A & B;
    2'b01: 
      SAIDA = A | B; 
    2'b10:
      SAIDA = A + B;
    2'b11:
      SAIDA = A - B;
  endcase

  FLAG_O = 0; 

  if (F == 2'b10) begin
    if (((A > 0 && B > 0) && (SAIDA < 0)) || ((A < 0 && B < 0) && (SAIDA > 0)))
      FLAG_O = 1;
  end

  if (F == 2'b11) begin
    if (((A > 0 && B < 0) && (SAIDA < 0)) || ((A < 0 && B > 0) && (SAIDA > 0)))
      FLAG_O = 1; 
  end
end

endmodule