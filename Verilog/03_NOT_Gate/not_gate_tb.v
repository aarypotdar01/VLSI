`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2026 12:57:34 PM
// Design Name: 
// Module Name: not_gate_tb
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


module not_gate_tb;

    reg A;
    wire Y;
    
    not_gate uut(
    .A(A),
    .Y(Y)
    );
    
    initial begin
    
    A = 0;
    #10;
    
    A = 1;
    #10;
    
    $finish;
    
    end
    
endmodule
