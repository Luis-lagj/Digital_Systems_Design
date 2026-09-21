`timescale 1ns / 1ps

module eq_comp_1bit(
    //Port declaration
    input logic a,b,
    output logic eq
    );
    //signal declaration
    logic p0,p1;
    //program body
    assign eq = p0 | p1;
    //product terms
    assign p0 = (~b & ~a);
    assign p1 = (b & a);
    //skdhaskjdhwajdhawjd
endmodule
