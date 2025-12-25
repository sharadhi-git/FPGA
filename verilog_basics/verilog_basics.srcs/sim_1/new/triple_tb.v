`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2025 12:02:04
// Design Name: 
// Module Name: triple_tb
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


module triple_tb();
    reg [3:0] in;
    wire [5:0] result;
    
    triple dut_triple(in, result);
    initial begin
    in=4'd0;#10;
    $display("The triple output of %d is %d",in,result);
    in=4'd1;#10;
     $display("The triple output of %d is %d",in,result);
    in=4'd3;#10;
     $display("The triple output of %d is %d",in,result);
    in=4'd5;#10;
     $display("The triple output of %d is %d",in,result);
    in=4'd10;#10;
     $display("The triple output of %d is %d",in,result);
    in=4'd15;#10;
     $display("The triple output of %d is %d",in,result);
    $stop;
    end
endmodule
