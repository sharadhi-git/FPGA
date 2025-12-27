`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 19:40:32
// Design Name: 
// Module Name: shift_left_register
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
// shift register example
//////////////////////////////////////////////////////////////////////////////////

module shift_left_register(
    input [7:0] Din,
    input PL,
    input clk,
    output reg [7:0] D
    );
    always @ (negedge clk, negedge PL) begin
      if(PL==0)
       D <=Din;
      else begin
       D[0]<=0;
       D[1]<=D[0]; 
       D[2]<=D[1];
       D[3]<=D[2];
       D[4]<=D[3];
       D[5]<=D[4];
       D[6]<=D[5];
       D[7]<=D[6];
      end
    end
endmodule
