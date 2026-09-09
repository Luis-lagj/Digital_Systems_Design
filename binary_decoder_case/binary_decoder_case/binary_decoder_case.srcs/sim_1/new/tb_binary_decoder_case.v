`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 05:03:07 PM
// Design Name: 
// Module Name: tb_binary_decoder_case
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


`timescale 1ns / 1ps

module tb_binary_decoder_case;

    // Declaración de señales
    logic [3:0] p_in;
    logic [2:0] p_code;

    //Prueba de circuito
    binary_decoder_case test (.p_in(p_in),.p_code(p_code));
//Combinaciones de entradas
    initial begin
        p_in = 4'b0000; #10;
        p_in = 4'b0001; #10;
        p_in = 4'b0010; #10;
        p_in = 4'b0011; #10;
        p_in = 4'b0100; #10;
        p_in = 4'b0101; #10;
        p_in = 4'b0110; #10;
        p_in = 4'b0111; #10;
        p_in = 4'b1000; #10;
        p_in = 4'b1001; #10;
        p_in = 4'b1010; #10;
        p_in = 4'b1011; #10;
        p_in = 4'b1100; #10;
        p_in = 4'b1101; #10;
        p_in = 4'b1110; #10;
        p_in = 4'b1111; #10;

        $stop;
    end

endmodule