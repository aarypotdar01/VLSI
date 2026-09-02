`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 10:50:19 PM
// Design Name: 
// Module Name: sequence_detector_tb
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


module sequence_detector_tb;
    reg CLK;
    reg RESET;
    reg X;
    wire Z;
    
    sequence_detector uut(
    .CLK(CLK),
    .RESET(RESET),
    .X(X),
    .Z(Z)    
    );
    
    initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
    end
    
    initial begin
    RESET = 1;
    X = 0;
    
    #10;
    RESET = 0;
    
    #2; X = 1;
    #10; X = 0;
    #10; X = 1;

    #10;
    $finish;
    
    end
    
    initial begin
    $monitor("Time=%0t | CLK=%b | RESET=%b | X=%b | Z=%b",
                 $time, CLK, RESET, X, Z);
    end
    
endmodule
