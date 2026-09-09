`timescale 1ns / 1ps

module tb_priority_encoder();
    // Señales para conectar con el módulo
    logic [3:0] p_in;
    logic [2:0] p_code;

    // Instanciación del módulo principal (UUT: Unit Under Test)
    priority_encoder_if uut (
        .p_in(p_in),
        .p_code(p_code)
    );

    // Bloque inicial de estímulos
    initial begin
        // Casos con un solo bit en 1
        p_in = 4'b0000; #10;
        p_in = 4'b0001; #10;
        p_in = 4'b0010; #10;
        p_in = 4'b0100; #10;
        p_in = 4'b1000; #10;
        
        // Casos de prueba de prioridad (múltiples 1s simultáneos)
        p_in = 4'b1010; #10; // El bit 3 tiene prioridad, la salida debe ser 100
        p_in = 4'b0111; #10; // El bit 2 tiene prioridad, la salida debe ser 011
        p_in = 4'b0011; #10; // El bit 1 tiene prioridad, la salida debe ser 010
        
        $finish; // Termina la simulación
    end
endmodule