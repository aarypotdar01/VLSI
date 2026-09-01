`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2026 09:26:10 PM
// Design Name: 
// Module Name: shift_register
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


module shift_register(
    input SI,
    input CLK,
    output reg [3:0] Q
    );
    
    always @(posedge CLK)
    begin
    Q[3] <= Q[2];
    Q[2] <= Q[1];
    Q[1] <= Q[0];
    Q[0] <= SI;
    end
    
endmodule
