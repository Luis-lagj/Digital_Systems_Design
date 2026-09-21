`timescale 1ns / 1ps

module bidirectional_buffer(
    input logic direction, signal_in, //[cite: 1]
    inout tri bidirectional, //[cite: 1]
    output logic signal_out
);
    // bidirectional I/O pin[cite: 1]
    assign bidirectional = (direction) ? signal_in : 1'bz; //[cite: 1]
    assign signal_out = bidirectional; //[cite: 1]
endmodule
