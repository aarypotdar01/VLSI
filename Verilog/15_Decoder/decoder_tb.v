`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2026 12:07:57 AM
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg A;
    reg B;
    
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;
    
    decoder uut(
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
    );
    
    initial begin
    
    A = 0;
    B = 0;
    #10;
    
    A = 0;
    B = 1;
    #10;
    
    A = 1;
    B = 0;
    #10;
    
    A = 1;
    B = 1;
    #10;
    
    $finish;
    
    end 
    
endmodule
