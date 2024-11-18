module problema1 (
    
    input logic A,
    output logic VDA, VMA, VDB, VMB);

    always_comb begin
        if (A <= 0) begin
            VMA <= 1;
            VDB <= 1;
            VDA <= 0;
            VMB <= 0;
        end
        else begin
            VDA <= 1;
            VMB <= 1;
            VMA <= 0;
            VDB <= 0;
        end
    end
    
endmodule