`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 20:25:01
// Design Name: 
// Module Name: blocking_logic
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


module blocking_logic(
    input a,
    input b,
    input c,
    output reg z
    );
  reg t1,t2;
  always @(a,b,c)begin
  t1 = b&c;
  t2 = a& ~b;
  z=t1| t2;
  end
endmodule
