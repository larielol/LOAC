parameter NBITS_DATA = 4;
module REG_DESLOCAMENTO(
    input logic clk, reset,
    input logic data_in,
    output logic [NBITS_DATA-1:0] data_out);

    always_ff @(posedge reset or posedge clk) begin
        if(reset)
            data_out <= 0;
        else begin
            data_out[3] <= data_in;
            data_out[2] <= data_out[3];
            data_out[1] <= data_out[2];
            data_out[0] <= data_out[1];
        end
    end
    
endmodule

















utilizando esses dois codigos:

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

parameter NBITS_DATA = 4;
module REG_DESLOCAMENTO(
    input logic clk, reset,
    input logic data_in,
    output logic [NBITS_DATA-1:0] data_out);

    always_ff @(posedge reset or posedge clk) begin
        if(reset)
            data_out <= 0;
        else begin
            data_out[3] <= data_in;
            data_out[2] <= data_out[3];
            data_out[1] <= data_out[2];
            data_out[0] <= data_out[1];
        end
    end
    
endmodule

faça:

Problema 1 – Registrador Paralelo/Serial
Construir um Registrador de 4 bits, que poderá realizar o armazenamento de forma paralela ou serial, conforme descrição a seguir.

Entradas e Saídas

clk.
reset.
Dado de Entrada Serial: Din_serie.
Entrada de seleção (armazenamento paralelo ou serial): SEL = 0 (paralelo) e SEL = 1 (serial).
Dado de Entrada Paralela: Din[3:0] (ou Din_3, Din_2, Din_1, Din_0).
Dado da Saída Paralela: Dout[3:0] (ou Dout_3, Dout_2, Dout_1, Dout_0).