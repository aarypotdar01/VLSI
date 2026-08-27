`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2026 12:03:16 PM
// Design Name: 
// Module Name: and_gate_tb
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


module and_gate_tb;

    reg A;
    reg B;
    wire Y;

    and_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin

        A = 0;
        B = 0;
        #10;

        A = 0;
        B = 1;
        #10;

        A = 1;
        B = 0;
        #10;

        A = 1;
        B = 1;
        #10;

        $finish;

    end

endmodule
