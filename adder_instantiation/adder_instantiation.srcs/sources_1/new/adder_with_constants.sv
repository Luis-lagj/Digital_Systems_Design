`timescale 1ns / 1ps

module adder_with_constants
    #(parameter N=4)
    (
    input logic [N-1:0] a,b,
    output logic [N-1:0] sum,
    output logic c_out
    );
    //constant declaration
    localparam N1 = N - 1;
    //signal declaration
    logic [N:0] sum_int;
    //body
    assign sum_int = {1'b0,a} + {1'b0,b};
    assign sum = sum_int[N1:0];
    assign c_out = sum_int[N];
endmodule
