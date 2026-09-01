`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2026 09:29:37 PM
// Design Name: 
// Module Name: shift_register_tb
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


module shift_register_tb;
    reg SI;
    reg CLK;
    
    wire [3:0] Q;
    
    shift_register uut(
    .SI(SI),
    .CLK(CLK),
    .Q(Q)
    );
    
    initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
    end
    
    initial begin
    SI = 1;
    #10;
    
    SI = 0;
    #10;
    
    SI = 1;
    #10;
    
    SI = 1;
    #10;
    
    $finish;
    
    end
endmodule
