module problema1 (
    
    input logic [1:0] AB,
    output logic VDA, VMA, VDB, VMB);

    always_comb begin
        case (AB)
            0, 1:
                begin
                    VMA <= 1;
                    VDB <= 1;
                    VDA <= 0;
                    VMB <= 0;
                end
            2, 3:
                begin
                    VDA <= 1;
                    VMB <= 1;
                    VMA <= 0;
                    VDB <= 0;
                end
        endcase
    end
    
endmodule