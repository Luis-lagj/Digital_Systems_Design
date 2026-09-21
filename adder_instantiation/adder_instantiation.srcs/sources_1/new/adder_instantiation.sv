`timescale 1ns / 1ps

module adder_instantiation(
    input logic [3:0] a4, b4,
    output logic [3:0] sum4,
    output logic c4,
    input logic [7:0] a8, b8,
    output logic [7:0] sum8,
    output logic c8
    );
    //instantiate 8-bit adder(override default parameter value)
    adder_with_constants #(.N(8)) u1
    (.a(a8), .b(b8), .sum(sum8), .c_out(c8));
    //instantiate 4-bit adder(default parameter value)
    adder_with_constants u2
    (.a(a4), .b(b4), .sum(sum4), .c_out(c4));
endmodule
