`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2026 10:30:53 PM
// Design Name: 
// Module Name: sequence_detector
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


module sequence_detector(
    input CLK,
    input RESET,
    input X,
    output reg Z
    );
    
    reg [1:0] state;
    reg [1:0] next_state;
    
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    localparam S3 = 2'b11;
    
    always @(posedge CLK)
    begin
        if(RESET)
        state <= S0;
        else
        state <= next_state;
    end
    
    always @(*)
    begin
        case(state)
        
        S0:
        if(X)
            next_state = S1;
        else
            next_state = S0;
            
         S1:
        if(X)
            next_state = S1;
        else
            next_state = S2;
            
         S2:
        if(X)
            next_state = S3;
        else
            next_state = S0;
            
         S3:
        if(X)
            next_state = S1;
        else
            next_state = S2;
            
         default :
         next_state = S0;
     endcase
     
end
     
     always @(*)
     begin
        if(state == S3)
            Z = 1;
        else
            Z = 0;
     end
     
        
endmodule
