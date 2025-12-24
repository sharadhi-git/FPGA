`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 19:07:36
// Design Name: 
// Module Name: boolean_exp
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

module boolean_exp(
    input a,
    input b,
    input c,
    output F
    );
   assign F = (~a & ~b & c) | (a & ~b & c);
endmodule
