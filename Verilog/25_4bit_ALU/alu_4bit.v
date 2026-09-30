`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 12:40:43 PM
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALU_SEL,
    output reg [3:0] RESULT,
    output reg CARRY,
    output reg ZERO
);

reg [4:0] TEMP;

always @(*)
begin
    RESULT = 4'b0000;
    CARRY = 1'b0;

    case(ALU_SEL)

        3'b000: begin
            TEMP = A + B;
            RESULT = TEMP[3:0];
            CARRY = TEMP[4];
        end

        3'b001: begin
            RESULT = A - B;
            CARRY = (A < B);
        end

        3'b010: begin
            RESULT = A & B;
        end

        3'b011: begin
            RESULT = A | B;
        end

        3'b100: begin
            RESULT = A ^ B;
        end

        3'b101: begin
            RESULT = A << 1;
        end

        3'b110: begin
            RESULT = A >> 1;
        end

        3'b111: begin
            RESULT = (A == B) ? 4'b0001 : 4'b0000;
        end

        default: begin
            RESULT = 4'b0000;
            CARRY = 1'b0;
        end

    endcase

    if(RESULT == 4'b0000)
        ZERO = 1'b1;
    else
        ZERO = 1'b0;

end

endmodule
