`timescale 1ns / 1ps

module tb_decoder_2_to_4_case();

    
    // Señales de prueba
    logic en;
    logic [1:0] a;
    logic [3:0] y;

    // Instanciación del módulo a probar (UUT)
    decoder_2_to_4_case uut (
        .en(en),
        .a(a),
        .y(y)
    );

    // Bloque de estímulos
    initial begin
        // Prueba 1: Decodificador deshabilitado (en = 0)
        en = 1'b0; a = 2'b00; #10;
        en = 1'b0; a = 2'b10; #10; // La salida debe mantenerse en 0000
        
        // Prueba 2: Decodificador habilitado (en = 1)
        en = 1'b1; a = 2'b00; #10; // Salida esperada: 0001
        en = 1'b1; a = 2'b01; #10; // Salida esperada: 0010
        en = 1'b1; a = 2'b10; #10; // Salida esperada: 0100
        en = 1'b1; a = 2'b11; #10; // Salida esperada: 1000
        
        $finish;
    end
endmodule