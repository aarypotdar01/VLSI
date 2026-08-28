`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2026 11:16:11 PM
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;
    reg A;
    reg B;
    reg Bin;
    
    wire Difference;
    wire Borrow;
    
    full_subtractor uut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Borrow(Borrow)
    );
    
    initial begin
    
    A = 0;
    B = 0;
    Bin = 0;
    #10;
    
    A = 0;
    B = 0;
    Bin = 1;
    #10;
    
    A = 0;
    B = 1;
    Bin = 0;
    #10;
    
    A = 0;
    B = 1;
    Bin = 1;
    #10;
    
    A = 1;
    B = 0;
    Bin = 0;
    #10;
    
    A = 1;
    B = 0;
    Bin = 1;
    #10;
    
    A = 1;
    B = 1;
    Bin = 0;
    #10;
    
    A = 1;
    B = 1;
    Bin = 1;
    #10;
    
    $finish;
    
    end
    
endmodule
