`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 19:08:31
// Design Name: 
// Module Name: boolean_exp_tb
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


module boolean_exp_tb();
   reg a,b,c;
   wire F;
   
   boolean_exp be1(a,b,c,F);
   initial begin
    {a,b,c}=0; #10;
    {a,b,c}=1; #10;
    {a,b,c}=2; #10;
    {a,b,c}=3; #10;
    {a,b,c}=4; #10;
    {a,b,c}=5; #10;
    {a,b,c}=6; #10;
    {a,b,c}=7; #10;
    $stop;
   end 
endmodule
