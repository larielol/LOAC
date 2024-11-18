module problema2(
    input logic [2:0] ABC,
    output logic VDA, VMA, VDB, VMB, VDC, VMC);

    always_comb begin
        case (ABC)
            0, 4, 6, 7:
                begin
                    VDA <= 1;
                    VMA <= 0;
                    VDB <= 0;
                    VMB <= 1;
                    VDC <= 0;
                    VMC <= 1;
                end
            1, 5:
                begin
                    VDA <= 0;
                    VMA <= 1;
                    VDB <= 0;
                    VMB <= 1;
                    VDC <= 1;
                    VMC <= 0;
                end
            2, 3:
                begin
                    VDA <= 0;
                    VMA <= 1;
                    VDB <= 1;
                    VMB <= 0;
                    VDC <= 0;
                    VMC <= 1;
                end
        endcase

    end

endmodule