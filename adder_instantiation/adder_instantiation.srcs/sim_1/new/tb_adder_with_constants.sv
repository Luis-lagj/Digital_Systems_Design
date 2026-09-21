`timescale 1ns / 1ps

module tb_adder_instantiation;

//seañes 

    logic [7:0]a8;
    logic [7:0]b8;
    logic [7:0]sum8;
    logic [1:0]c8;
    
    adder_instantiation test(
    .a8(a8), .b8(b8), .sum8(sum8), .c8(c8));
    
    initial begin
    
    a8 = 8'b01111111;
    b8 = 8'b01111111;
    
    #10;
    $stop;
end
endmodule
