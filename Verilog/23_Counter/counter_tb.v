`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2026 10:02:46 PM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb;
    reg CLK;
    wire [3:0]Q;
    
    counter uut(
    .CLK(CLK),
    .Q(Q)
    );
    
    initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
    end
    
    initial begin
    
    #160; 
    
    $finish;
    
    end
endmodule   
