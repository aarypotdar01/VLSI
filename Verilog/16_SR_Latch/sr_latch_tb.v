`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2026 10:51:08 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
    reg S;
    reg R;
    
    wire Q;
    wire Qbar;
    
    sr_latch uut(
    .S(S),
    .R(R),
    .Q(Q),
    .Qbar(Qbar)
    );
    
    initial begin
       // Reset
        S = 0;
        R = 1;
        #10;

        // Hold
        S = 0;
        R = 0;
        #10;

        // Set
        S = 1;
        R = 0;
        #10;

        // Hold
        S = 0;
        R = 0;
        #10;

        // Forbidden condition
        S = 1;
        R = 1;
        #10;

        // Return to reset
        S = 0;
        R = 1;
        #10;
    
    $finish;
    
    end
endmodule
