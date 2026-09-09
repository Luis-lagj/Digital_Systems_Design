`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 07:22:29 PM
// Design Name: 
// Module Name: tb_binary_decoder_if
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module binary_decoder_if_tb;
//Declaración de senales
    logic       a;
    logic [1:0] b;
    logic [3:0] c;

    binary_decoder_if uut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        $monitor("Tiempo = %0t | a = %b | b = %b | c = %b", $time, a, b, c);
//Vectores a prueba
        a = 1'b0; b = 2'b00; #10;
        b = 2'b11; #10;

        a = 1'b1; b = 2'b00; #10;
        a = 1'b1; b = 2'b01; #10;
        a = 1'b1; b = 2'b10; #10;
        a = 1'b1; b = 2'b11; #10;
// Terminar
        $stop;
    end

endmodule