module priority_encoder_if(
    input logic [3:0] p_in,
    output logic [2:0] p_code
);

    // Se utiliza always_comb para lógica combinacional
        
        always_comb begin
        
        // Se evalúa desde el bit de mayor prioridad (el bit 3)
        
        // Si p_in es 1---
        if (p_in[3] == 1'b1) begin
            p_code = 3'b100; 
        end
        
        // Si p_in es 01--
        else if (p_in[2] == 1'b1) begin
            p_code = 3'b011; 
        end
        
        // Si p_in es 001-
        else if (p_in[1] == 1'b1) begin
            p_code = 3'b010; // Si p_in es 001-
        end
        
        // Si p_in es 0001
        else if (p_in[0] == 1'b1) begin
            p_code = 3'b001;
        end
        
        // Si p_in es 0000
        else begin
            p_code = 3'b000; 
        end
    end

endmodule