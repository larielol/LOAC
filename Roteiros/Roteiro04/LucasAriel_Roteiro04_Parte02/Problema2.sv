module RAM_ROM(
  input [1:0] Addr,
  output reg [3:0] Dout
);

  reg [3:0] mem [0:3];

  always @(Addr) begin
    case(Addr)
      2'b00: Dout = 4'b0100;
      2'b01: Dout = 4'b1100;
      2'b10: Dout = 4'b0110;
      2'b11: Dout = 4'b0111;
      default: Dout = 4'b0000;
    endcase
  end

endmodule