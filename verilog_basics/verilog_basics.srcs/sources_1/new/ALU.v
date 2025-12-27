`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 14:37:10
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [3:0] a,
    input [3:0] b,
    input [1:0] op,
    output reg [7:0] result
    );
    always @(op,a,b)
    case(op)
     2'b00:result={4'b0000,(a+b)};
     2'b01:result=(a*b);
     2'b10:result={4'b0000,{a%b}};
     2'b11:result={4'b0000,a&b};
   endcase
endmodule
