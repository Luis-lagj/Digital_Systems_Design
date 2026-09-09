`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2026 03:14:51 PM
// Design Name: 
// Module Name: binary_decoder_case
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


module binary_decoder_case(
//declaracin de puertos
     input logic [3:0] p_in,
     output logic [2:0] p_code
    );

always_comb
     casez(p_in)
     //Prioridad 
       4'b1??? : p_code = 3'b100;
       4'b01?? : p_code = 3'b011;
       4'b001? : p_code = 3'b010;
       4'b0001 : p_code = 3'b001;
       4'b0000 : p_code = 3'bzzz;
       default : p_code = 3'bzzz;
     endcase
endmodule
