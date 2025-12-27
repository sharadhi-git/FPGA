`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 21:39:40
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb();
    reg clk_in=4MHz;
    reg reset;
    reg [31:0] ratio;
    wire clk_out;
    
    clock_divider cd_DUT(clk_in,clk_out,reset,ratio);
    initial begin
    
endmodule
