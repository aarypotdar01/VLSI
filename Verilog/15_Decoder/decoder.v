`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2026 12:05:44 AM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input A,
    input B,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
    
    assign Y0 = ~A & ~B;
    assign Y1 = ~A & B;
    assign Y2 = A & ~B;
    assign Y3 = A & B;
endmodule
