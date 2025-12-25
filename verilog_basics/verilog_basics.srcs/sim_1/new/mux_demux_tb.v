`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2025 10:12:55
// Design Name: 
// Module Name: mux_demux_tb
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
// This test bench created to do a additional DUT for the multiplexer and demultiplexer operation
//Earlier We tested both mux and demux with delays, its only for simulations, not for synthesis.
//Here we provide a two different clk signals to mux. they have two freqeuncies. so based on sel signal, mux decide which clock signal to provide at the output. 
//Here in demux, we provide a clk as the input signal and provide the output based on sel signal 
//In this test bench module we use always blocks to maintain  the clk signals
//now this is possible to synthesis in FPGA.
//////////////////////////////////////////////////////////////////////////////////


module mux_demux_tb();
    reg clk_1MHz, clk_4MHz;// clk signals as inputs
    reg sel1;// sel for mux
    reg [1:0] sel2;//sel for demux
    wire mux_out;
    wire [3:0] demux_out;
    
     two_to_one_multiplexer  dut_mux(.I({clk_1MHz,clk_4MHz}),.sel(sel1),.Y(mux_out));
     one_to_four_demux  dut_demux(.I(clk_1MHz),.sel(sel2),.Y(demux_out));
     
     always #500 clk_1MHz=~clk_1MHz;// define clock signal cycle with always
     
     always #125 clk_4MHz=~clk_4MHz;//define clock signal cycle with always
     
     initial begin
        clk_1MHz=0;
        clk_4MHz=0;
        sel1=0;//for mux selection signal
        sel2=0;//for demux selection singal
        #10_000;
        sel2=1;//for demux selection signal changes to 1
        #10_000;
        sel1=1;//for mux selection signal changes to 1
        sel2=2;//for demux selection signal changes to 2
        #10_000;
        sel2=3;//for demux selection signal changes to 3
        #10_000;
        $stop;
     end 
endmodule
