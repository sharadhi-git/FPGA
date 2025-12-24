`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 21:05:08
// Design Name: 
// Module Name: non_blocking_logic
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


module non_blocking_logic(
    input i,
    input clk,
    output reg o
    );
    reg temp;
    always @(posedge clk) begin
     temp<=i;
     o<=temp;
    end
endmodule
