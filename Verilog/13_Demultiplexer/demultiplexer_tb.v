`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2026 11:41:17 PM
// Design Name: 
// Module Name: demultiplexer_tb
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


module demultiplexer_tb;
    reg D;
    reg S;
    
    wire Y0;
    wire Y1;
    
    demultiplexer uut(
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
    );
    
    initial begin
    
    D = 0;
    S = 0;
    #10;
    
    D = 0;
    S = 1;
    #10;
    
    D = 1;
    S = 0;
    #10;
    
    D = 1;
    S = 1;
    #10;
    
    $finish;
    
    end
    
endmodule
