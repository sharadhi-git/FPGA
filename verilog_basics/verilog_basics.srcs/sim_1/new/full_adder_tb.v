`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 11:19:53
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a,b,c;
wire[1:0] s;

full_adder fa1(.A(a),.B(b),.Cin(c),.S(s[0]),.Cout(s[1]));

initial begin
    {a,b,c}=0; #5;
    {a,b,c}=1; #5;
    {a,b,c}=2; #5;
    {a,b,c}=3; #5;
    {a,b,c}=4; #5;
    {a,b,c}=5; #5;
    {a,b,c}=6; #5;
    {a,b,c}=7; #5;
    $stop;
end
endmodule
