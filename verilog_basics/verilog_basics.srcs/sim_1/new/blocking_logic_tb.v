`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 20:30:57
// Design Name: 
// Module Name: blocking_logic_tb
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


module blocking_logic_tb();
    reg [2:0] in;
    wire out;
    blocking_logic bl(in[2],in[1],in[0],out);
    
    initial begin
    {in[2],in[1],in[0]}=0; #10;
    {in[2],in[1],in[0]}=1; #10;
    {in[2],in[1],in[0]}=2; #10;
    {in[2],in[1],in[0]}=3; #10;
    {in[2],in[1],in[0]}=4; #10;
    {in[2],in[1],in[0]}=5; #10;
    {in[2],in[1],in[0]}=6; #10;
    {in[2],in[1],in[0]}=7; #10;
    $stop;
   end 
endmodule
