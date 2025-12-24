`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 22:05:39
// Design Name: 
// Module Name: is_prime_tb
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


module is_prime_tb();
    reg c,b,a;
    wire p;
    
    is_prime pr1(c,b,a,p);
    initial begin
    {c,b,a}=0; #5;
    {c,b,a}=1; #5;
    {c,b,a}=2; #5;
    {c,b,a}=3; #5;
    {c,b,a}=4; #5;
    {c,b,a}=5; #5;
    {c,b,a}=6; #5;
    {c,b,a}=7; #5;
    $stop;
end
endmodule
