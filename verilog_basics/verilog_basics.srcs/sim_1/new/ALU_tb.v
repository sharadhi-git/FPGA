`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 14:54:28
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();
    reg [3:0]a;
    reg [3:0]b;
    reg [1:0]op;
    wire [7:0]result;
    
    ALU ALU_tb(a,b,op,result);
    initial begin
    a=0;b=1;op=00;#10;
    $display("The value of a is %d, value of b is %d, value of a+b is %d",a,b,result);
    a=2;b=3;op=00;#10;
    $display("The value of a is %d, value of b is %d, value of a+b is %d",a,b,result);
    a=9;b=3;op=01;#10;
    $display("The value of a is %d, value of b is %d, value of a*b is %d",a,b,result);
    a=13;b=5;op=10;#10;
    $display("The value of a is %d, value of b is %d, value of a modulo b is %d",a,b,result);
    a=1;b=7;op=11;#10;
    $display("The value of a is %d, value of b is %d, value of a&b is %d",a,b,result);
    $stop;
    end
endmodule
