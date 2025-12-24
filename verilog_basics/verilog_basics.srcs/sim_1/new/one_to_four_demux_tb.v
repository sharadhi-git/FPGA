`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 15:43:10
// Design Name: 
// Module Name: one_to_four_demux_tb
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

module one_to_four_demux_tb();
    reg a;
    reg [1:0] sel;
    wire [3:0]demux_out;
    
    one_to_four_demux demux1(a,sel,demux_out);
    
    initial begin
      a=0;
      sel=2'b00;#10;
      a=1;#10;
      a=0;#10;
      sel=2'b01;#10;
      a=0;#10;
      a=1;#10; 
      $stop;
    end
endmodule
