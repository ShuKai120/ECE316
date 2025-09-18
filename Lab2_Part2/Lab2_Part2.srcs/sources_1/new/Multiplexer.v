`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2025 14:29:49
// Design Name: 
// Module Name: Multiplexer
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

//Structural
//module Multiplexer(
//    output Y,
//    input I0, I1, I2, I3,
//    input s0, s1
//);
//    wire s0bar, s1bar, T1, T2, T3, T4;

//    not (s0bar, s0);
//    not (s1bar, s1);

//    and (T4, I0, s0bar, s1bar);
//    and (T3, I1, s0, s1bar);
//    and (T2, I2, s0bar, s1);
//    and (T1, I3, s0, s1);

//    or (Y, T1, T2, T3, T4);
//endmodule

//Behavioral 
module Multiplexer(
    input  wire I0, I1, I2, I3,
    input  wire s0, s1,
    output reg  Y
);

always @* begin
    case ({s1, s0})    
        2'b00: Y = I0;
        2'b01: Y = I1;
        2'b10: Y = I2;
        2'b11: Y = I3;
        default: Y = 1'b0;  
    endcase
end
endmodule

