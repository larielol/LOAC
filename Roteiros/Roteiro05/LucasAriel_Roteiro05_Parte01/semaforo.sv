parameter NBITS_COUNT = 3;
module semaforo(
    input logic clk, reset,
  output logic [NBITS_COUNT-1:0] Saida);

  always_ff @(posedge reset or posedge clk) begin
      if(reset)
          Saida <= 1;
      else
        if(Saida[NBITS_COUNT-1])
          Saida <= 1;
        else
          Saida <= Saida << 1;
    end
endmodule