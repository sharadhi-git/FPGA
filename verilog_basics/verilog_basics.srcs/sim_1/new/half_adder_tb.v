`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 10:31:02
// Design Name: 
// Module Name: half_adder_tb
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
// In this test bench file we add the test bench related things 
//////////////////////////////////////////////////////////////////////////////////


module half_adder_tb( );
reg in1;
reg in2;
wire out_S;
wire out_Cout;

half_adder dut(.A(in1),.B(in2),.S(out_S),.Cout(out_Cout));// instantiate the dut module from half adder

initial begin
in1=0;  in2=0;
#10;
in1=0;in2=1;
#10;
in1=1;in2=0;
#10;
in1=1;in2=1;
#10;
$finish;
end
endmodule
