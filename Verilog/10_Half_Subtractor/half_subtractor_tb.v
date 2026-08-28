`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2026 10:54:26 PM
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb;
    reg A;
    reg B;
    wire Difference;
    wire Borrow;
    
    half_subtractor uut(
    .A(A),
    .B(B),
    .Difference(Difference),
    .Borrow(Borrow)
    );
    
    initial begin
    
    A = 0;
    B = 0;
    #10;
    
    A = 1;
    B = 0;
    #10;
    
    A = 0;
    B = 1;
    #10;
    
    A = 1;
    B = 1;
    #10;
    
    $finish;
    
    end
    
endmodule
