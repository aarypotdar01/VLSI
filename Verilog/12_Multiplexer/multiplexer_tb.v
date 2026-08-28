`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2026 11:29:16 PM
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb;
    reg I0;
    reg I1;
    reg S;
    
    wire Y;
    
    multiplexer uut(
    .I0(I0),
    .I1(I1),
    .S(S),
    .Y(Y)
    );
    
    initial begin
    
    I0 = 0;
    I1 = 0;
    S = 0;
    #10;
    
    I0 = 0;
    I1 = 0;
    S = 1;
    #10;
    
    I0 = 0;
    I1 = 1;
    S = 0;
    #10;
    
    I0 = 0;
    I1 = 1;
    S = 1;
    #10;
    
    I0 = 1;
    I1 = 0;
    S = 0;
    #10;
    
    I0 = 1;
    I1 = 0;
    S = 1;
    #10;
    
    I0 = 1;
    I1 = 1;
    S = 0;
    #10;
    
    I0 = 1;
    I1 = 1;
    S = 1;
    #10;
    
    $finish;
    
    end
    
endmodule
