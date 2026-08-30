`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2026 09:57:49 PM
// Design Name: 
// Module Name: jk_flip_flop_tb
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


module jk_flip_flop_tb;
    reg J;
    reg K;
    reg CLK;
    wire Q;
    wire Qbar;
    
    jk_flip_flop uut(
    
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q(Q),
    .Qbar(Qbar)
    );
    
    initial begin
            CLK = 0;
        forever #5 CLK = ~CLK;
    end
    
    initial begin
    J = 1;
    K = 0;
    #10;
    
    J = 0;
    K = 0;
    #10;
    
    J = 0;
    K = 1;
    #10;
    
    J = 0;
    K = 0;
    #10;
    
    J = 1;
    K = 1;
    #10;
    
    J = 1;
    K = 1;
    #10;
    
    J = 0;
    K = 1;
    #10;
    
    $finish;
    
    end
endmodule
