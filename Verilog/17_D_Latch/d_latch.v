`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2026 11:02:50 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input D,
    input EN,
    output reg Q,
    output reg Qbar
    );
    
    always @ (D or EN)
    begin
            if(EN)
            begin
                Q = D;
                Qbar = ~D;
            end 
            
     end
    
endmodule
