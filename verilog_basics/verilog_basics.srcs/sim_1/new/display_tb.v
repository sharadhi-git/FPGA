`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2025 11:36:26
// Design Name: 
// Module Name: display_tb
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
//This code is genarate for he purpose of testing display and monitor functionds.
//There is no attached source file for the code
//////////////////////////////////////////////////////////////////////////////////

module display_tb();
    reg [7:0] a;
    reg [7:0] b;
    
    initial begin
       $monitor("The value of a has been changed to %d",a);
       a=10;b=1;#10;
       $display("The value of a is %d , value of b is %d",a,b);
       a=20;b=2;#10;
       $display("The value of a is %d , value of b is %d",a,b);
       a=30;b=3;#10;
       a=40;b=4;#10;
       $display("The value of a is %d , value of b is %d",a,b);
       a=50;b=5;#10;
       $stop;
    end
endmodule
