`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 14:49:57
// Design Name: 
// Module Name: two_to_one_multiplexer
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


module two_to_one_multiplexer(
    input [1:0] I,
    input sel,
    output reg Y
    );
  
  always @ (sel,I)begin
    if(sel==0)
        Y=I[0];
    else
        Y=I[1];
  end
  
endmodule
