`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 12:47:12 PM
// Design Name: 
// Module Name: alu_4bit_tb
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


`timescale 1ns / 1ps

module alu_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] ALU_SEL;

    wire [3:0] RESULT;
    wire CARRY;
    wire ZERO;

    alu_4bit uut(
        .A(A),
        .B(B),
        .ALU_SEL(ALU_SEL),
        .RESULT(RESULT),
        .CARRY(CARRY),
        .ZERO(ZERO)
    );

    initial begin

        // Addition
        A = 4'b0101;
        B = 4'b0011;
        ALU_SEL = 3'b000;
        #10;

        // Subtraction
        A = 4'b1000;
        B = 4'b0011;
        ALU_SEL = 3'b001;
        #10;

        // AND
        A = 4'b1100;
        B = 4'b1010;
        ALU_SEL = 3'b010;
        #10;

        // OR
        A = 4'b1100;
        B = 4'b1010;
        ALU_SEL = 3'b011;
        #10;

        // XOR
        A = 4'b1100;
        B = 4'b1010;
        ALU_SEL = 3'b100;
        #10;

        // Left Shift
        A = 4'b0011;
        B = 4'b0000;
        ALU_SEL = 3'b101;
        #10;

        // Right Shift
        A = 4'b1100;
        B = 4'b0000;
        ALU_SEL = 3'b110;
        #10;

        // Compare
        A = 4'b0101;
        B = 4'b0101;
        ALU_SEL = 3'b111;
        #10;
        
        // Test ZERO flag
        A = 4'b0101;
        B = 4'b0101;
        ALU_SEL = 3'b001;   // 5 - 5 = 0
        #10;

        // Test CARRY flag
        A = 4'b1111;
        B = 4'b0001;
        ALU_SEL = 3'b000;   // 15 + 1 = 16
        #10;

        $finish;

    end

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | SEL=%b | RESULT=%b | CARRY=%b | ZERO=%b",
                 $time, A, B, ALU_SEL, RESULT, CARRY, ZERO);
    end

endmodule
