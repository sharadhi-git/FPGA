`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 15:03:31
// Design Name: 
// Module Name: two_to_one_muliplexer_tb
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


module two_to_one_muliplexer_tb();
    reg a,b,sel;
    wire mux_out;
    two_to_one_multiplexer mux1({b,a},sel,mux_out);
    initial begin
        a=0;b=0;sel=0;#10;
        a=1;b=0;sel=0;#10;
        a=1;b=0;sel=0;#10;
        a=1;b=1;sel=0;#10;
        a=0;b=0;sel=0;#10;
        a=1;b=0;sel=0;#10;
        a=0;b=1;sel=0;#10;
        a=1;b=0;sel=0;#10;
        a=1;b=0;sel=1;#10;
        $stop;
    end
endmodule
