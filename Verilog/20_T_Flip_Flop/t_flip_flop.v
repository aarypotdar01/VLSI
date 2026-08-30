`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2026 10:09:13 PM
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input T,
    input CLK,
    output reg Q,
    output reg Qbar
    );
    
        initial begin
        Q = 0;
        Qbar = 1;
        end
    
    always @ (posedge CLK)
    begin
    
    if(T)
    begin
    Q = ~Q;
    end
    Qbar = ~Q;
    end
endmodule
