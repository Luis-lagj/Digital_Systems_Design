`timescale 1ns / 1ps

module tb_bit_manipulation();

    // Señales de prueba
    logic [7:0] a;
    logic [7:0] rotate;
    logic [7:0] shift_left;
    logic [7:0] shift_arithmetic;
    logic [7:0] sha;

    // Instanciación del módulo a probar (UUT)
    bit_manipulation uut (
        .a(a),
        .rotate(rotate),
        .shift_left(shift_left),
        .shift_arithmetic(shift_arithmetic),
        .sha(sha)
    );

    // Bloque de estímulos
    initial begin
        // Prueba 1: Valor con el bit más significativo (MSB) en 1
        // Esto permite ver claramente cómo se replica el '1' en el shift aritmético
        a = 8'b10101100; #10;
        
        // Prueba 2: Valor con el MSB en 0
        // Aquí verás cómo se replica el '0' en las operaciones de signo
        a = 8'b01010011; #10;
        
        // Prueba 3: Valor con la mitad superior en 1 y la inferior en 0
        a = 8'b11110000; #10;
        
        // Prueba 4: Valor con la mitad superior en 0 y la inferior en 1
        a = 8'b00001111; #10;
        
        $finish; // Termina la simulación
    end

endmodule