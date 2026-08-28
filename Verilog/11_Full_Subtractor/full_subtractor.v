`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2026 11:10:57 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input A,
    input B,
    input Bin,
    output Difference,
    output Borrow
    );
    
    assign Difference = A ^ B ^ Bin;
    assign Borrow = (~A & B) | (~A & Bin) | (B & Bin);
endmodule
