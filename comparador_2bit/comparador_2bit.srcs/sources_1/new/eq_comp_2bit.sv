`timescale 1ns / 1ps

module eq_comp_2bit(
    input logic [1:0] A, B,
    output logic EQ
    );
    //internal signal declaration
    logic e0, e1;
    //program body
    assign EQ = e0 & e1; 
    //instantiate two 1-bit comparators
    eq_comp_1bit U1(
    .a(A[0]),
    .b(B[0]),
    .eq(e0));
    
    eq_comp_1bit U2(
    .a(A[1]),
    .b(B[1]),
    .eq(e1));
                                                            
endmodule
