`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 21:41:32
// Design Name: 
// Module Name: non_blocking_logic_tb
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


module non_blocking_logic_tb();
    reg i,clk;
    wire o;
    
    non_blocking_logic nbl(i,clk,o);
     initial begin
    i=0;clk=0; #10;
    i=0;clk=1; #10;
    i=1;clk=0; #10;
    i=1;clk=1; #10;
    $stop;
   end 
    
endmodule
