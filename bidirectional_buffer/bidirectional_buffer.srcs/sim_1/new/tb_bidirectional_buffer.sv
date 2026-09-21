`timescale 1ns / 1ps

module tb_bidirectional_buffer();

    // Señales de prueba del módulo
    logic direction;
    logic signal_in;
    logic signal_out;
    
    // Para puertos inout, se debe usar un tipo net (tri o wire) en el Testbench
    tri bidirectional; 

    // Señales auxiliares del testbench para simular un dispositivo externo
    logic tb_drive_enable;
    logic tb_data;

    // Simula otro dispositivo conectándose y enviando datos al pin bidireccional
    assign bidirectional = tb_drive_enable ? tb_data : 1'bz;

    // Instanciación del módulo (UUT)
    bidirectional_buffer uut (
        .direction(direction),
        .signal_in(signal_in),
        .bidirectional(bidirectional),
        .signal_out(signal_out)
    );

    initial begin
        // Prueba 1: Módulo transmitiendo (direction = 1)
        // El módulo controla el bus. El dispositivo externo se desconecta (Z).
        tb_drive_enable = 1'b0; 
        direction = 1'b1;
        signal_in = 1'b0; #10; // bidirectional debe ser 0, signal_out lee 0
        signal_in = 1'b1; #10; // bidirectional debe ser 1, signal_out lee 1

        // Prueba 2: Módulo recibiendo (direction = 0)
        // El módulo libera el pin (Z). El dispositivo externo toma el control y escribe.
        direction = 1'b0;
        signal_in = 1'b0; // El valor de signal_in ya no afecta el bus
        
        tb_drive_enable = 1'b1; // Dispositivo externo se activa
        tb_data = 1'b0; #10; // bidirectional adopta 0, signal_out lee 0
        tb_data = 1'b1; #10; // bidirectional adopta 1, signal_out lee 1
        
        // Prueba 3: Bus completamente libre (Alta impedancia)
        // Ninguno de los dos extremos escribe en el bus
        tb_drive_enable = 1'b0; #10; // bidirectional = Z, signal_out = Z
        
        $finish;
    end
endmodule

// esto no supe como hacer la simulacion la hice con IA