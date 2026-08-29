`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2026 11:34:24 PM
// Design Name: 
// Module Name: d_flip_flop_tb
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


module d_flip_flop_tb;

    reg D;
    reg CLK;

    wire Q;
    wire Qbar;

    d_flip_flop uut(
        .D(D),
        .CLK(CLK),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Test stimulus
    initial begin
        D = 0;
        #12;

        D = 1;
        #10;

        D = 0;
        #10;

        D = 1;
        #10;

        $finish;
    end

endmodule
