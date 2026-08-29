`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2026 11:12:29 PM
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb;
    reg D;
    reg EN;
    
    wire Q;
    wire Qbar;
    
    d_latch uut(
    .D(D),
    .EN(EN),
    .Q(Q),
    .Qbar(Qbar)
    );
    
    initial begin
    D = 1; 
    EN = 1;
    #10;
    
    D = 0; 
    EN = 0;
    #10;
    
    D = 0; 
    EN = 1;
    #10;
    
    D = 1; 
    EN = 0;
    #10;
    
    D = 0; 
    EN = 0;
    #10;
    
    $finish;
    
    end
    
endmodule
