`timescale 1ns / 1ps

module eq_comp_2bit_tb;
//signal declaration
logic [1:0] test_in0, test_in1;
logic test_out;
//instantiate circuit under test
eq_comp_2bit uut (.A(test_in0), .B(test_in1), .EQ(test_out));
initial
begin
    //test vector 1
    test_in0 = 2'b00;
    test_in1 = 2'b00;
    #10;
    //test vector 2
    test_in0 = 2'b01;
    test_in1 = 2'b00;
    #10; 
    //stop simulation
    $stop;
end
endmodule
