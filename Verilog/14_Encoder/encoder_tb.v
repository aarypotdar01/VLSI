`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2026 11:55:03 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
    reg D0;
    reg D1;
    reg D2;
    reg D3;
    
    wire Y0;
    wire Y1;
    
    encoder uut(
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y0(Y0),
    .Y1(Y1)
    );
    
    initial begin
    
    D0 = 1;
    D1 = 0;
    D2 = 0;
    D3 = 0;
    #10;
    
     D0 = 0;
    D1 = 1;
    D2 = 0;
    D3 = 0;
    #10;
    
     D0 = 0;
    D1 = 0;
    D2 = 1;
    D3 = 0;
    #10;
    
     D0 = 0;
    D1 = 0;
    D2 = 0;
    D3 = 1;
    #10;
    
    $finish;
    
    end
endmodule
