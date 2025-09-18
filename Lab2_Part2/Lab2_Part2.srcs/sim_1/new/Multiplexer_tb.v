`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2025 14:32:05
// Design Name: 
// Module Name: Multiplexer_tb
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


module Multiplexer_tb;

    reg I0, I1, I2, I3;
    reg s0, s1;
    wire Y;

    Multiplexer uut (.Y(Y), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .s0(s0), .s1(s1));

    initial begin
        // Test Case 1a
        I0 = 1; I1 = 0; I2 = 0; I3 = 0;
        s0 = 0; s1 = 0;
        #10;
        // Test Case 1b
        s0 = 0; s1 = 1;
        #10;
        // Test Case 1c
        s0 = 1; s1 = 0;
        #10;
        // Test Case 1d
        s0 = 1; s1 = 1;
        #20;
        
        //Test Case 2a
        I0 = 0; I1 = 1; I2 = 0; I3 = 0; 
        s0 = 0; s1 = 0;
        #10;
        // Test Case 2b
        s0 = 0; s1 = 1;
        #10;
        // Test Case 2c
        s0 = 1; s1 = 0;
        #10;
        // Test Case 2d
        s0 = 1; s1 = 1;
        #20;

        // Test Case 3a
        I0 = 0; I1 = 0; I2 = 1; I3 = 0; 
        s0 = 0; s1 = 0;
        #10;
        // Test Case 3b
        s0 = 0; s1 = 1;
        #10;
        // Test Case 3c
        s0 = 1; s1 = 0;
        #10;
        // Test Case 3d
        s0 = 1; s1 = 1;
        #20;

        // Test Case 4a
        I0 = 0; I1 = 0; I2 = 0; I3 = 1; 
        s0 = 0; s1 = 0;
        #10;
        // Test Case 4b
        s0 = 0; s1 = 1;
        #10;
        // Test Case 4c
        s0 = 1; s1 = 0;
        #10;
        // Test Case 4d
        s0 = 1; s1 = 1;
        #20;
        
        $finish;
    end
endmodule


