module bit_manipulation(
    input logic [7:0] a,
    output logic [7:0] rotate, shift_left, shift_arithmetic, sha
);
    // rotate a to the right 3 bits[cite: 1]
    assign rotate = {a[2:0], a[7:3]}; //[cite: 1]
    
    // shift a to right 3 bits and insert 0s[cite: 1]
    assign shift_left = {3'b000, a[7:3]}; //[cite: 1]
    
    // shift a to right 3 bits and insert MSB[cite: 1]
    assign shift_arithmetic = {a[7], a[7], a[7], a[7:3]}; //[cite: 1]
    
    // El operador {} replica N veces la cadena encerrada[cite: 1]
    assign sha = {{3{a[7]}}, a[7:3]}; //[cite: 1]
endmodule