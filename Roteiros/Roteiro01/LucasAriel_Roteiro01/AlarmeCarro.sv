// Write your modules here!
module AlarmeCarro(input logic P1,P2,M1,
             output logic Alarme);
  
  always_comb Alarme <= (P1 | P2) & M1;
  
endmodule