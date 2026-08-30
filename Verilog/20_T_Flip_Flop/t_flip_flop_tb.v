`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2026 10:14:10 PM
// Design Name: 
// Module Name: t_flip_flop_tb
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


module t_flip_flop_tb;
    reg T;
    reg CLK;
    wire Q;
    wire Qbar;
    
    t_flip_flop uut(
    .T(T),
    .CLK(CLK),
    .Q(Q),
    .Qbar(Qbar)    
    );


    initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
    end
    
    initial begin
    T = 0; 
    #10;
    
    T = 1;
    #10;
    
    T = 1;
    #10;
    
    T = 0;
    #10;
    
    $finish;
    
    end
endmodule
