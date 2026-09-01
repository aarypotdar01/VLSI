`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2026 09:08:11 PM
// Design Name: 
// Module Name: register_tb
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


module register_tb;
    reg [3:0]D ;
    reg CLK;
    
    wire [3:0] Q;
    
    register uut(
    .D(D),
    .CLK(CLK),
    .Q(Q)
    );
    
    initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
    end
    
    initial begin
    D[3] = 0;
    D[2] = 0;
    D[1] = 0;
    D[0] = 0;
    #10;
    
    D[3] = 1;
    D[2] = 0;
    D[1] = 1;
    D[0] = 0;
    #10;
    
    D[3] = 0;
    D[2] = 1;
    D[1] = 0;
    D[0] = 1;
    #10;
    
    D[3] = 1;
    D[2] = 1;
    D[1] = 1;
    D[0] = 1;
    #10;
    
    D[3] = 0;
    D[2] = 0;
    D[1] = 1;
    D[0] = 1;
    #10;
    
    $finish;
    
    end
    
endmodule
