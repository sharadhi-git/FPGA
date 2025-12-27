`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 20:49:23
// Design Name: 
// Module Name: shift_left_register_tb
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


module shift_left_register_tb();
    reg clk, PL;
    reg[7:0] PData;
    wire [7:0] SLData;
    
    always #5 clk=~clk;
    shift_left_register slr_dut(PData,PL,clk,SLData);
    
    initial begin
      PL=1;#1;clk=0;PData=8'b01100101; #1;
      PL=0;#10;
      PL=1;#100;
      $stop;
    end
endmodule
