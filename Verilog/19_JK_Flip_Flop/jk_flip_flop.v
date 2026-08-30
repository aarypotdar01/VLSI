`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2026 09:46:52 PM
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input J,
    input K,
    input CLK,
    output reg Q,
    output reg Qbar
    );
    
    always @ (posedge CLK)
    begin
        
        case({J,K})
        
            2'b00:
            Q=Q;
            
            2'b01:
            Q=0;
            
            2'b10:
            Q=1;
            
            2'b11:
            Q=~Q;
            
          endcase
      Qbar = ~Q;
      
    end
endmodule
