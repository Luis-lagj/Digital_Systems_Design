module decoder_2_to_4_case(
    input logic en,
    input logic [1:0] a,
    output logic [3:0] y
);
    always_comb begin
        if (en == 1'b1) begin
            case (a)
                2'b00: y = 4'b0001; //
                2'b01: y = 4'b0010; //
                2'b10: y = 4'b0100; //
                2'b11: y = 4'b1000; //
                default: y = 4'b0000; // Buenas prácticas para evitar latches[cite: 1]
            endcase
        end else begin
            y = 4'b0000; // Salida en 0 si no está habilitado[cite: 1]
        end
    end
endmodule

