`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 21:33:28
// Design Name: 
// Module Name: clock_divider
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
// last challange to build a clock divider

//////////////////////////////////////////////////////////////////////////////////

module clock_divider(
    input clk_in,
    output reg clk_out,
    input reset,
    input [31:0] ratio
    );
    
    reg [31:0] counter;// we require a counter to store value 
    always @(posedge clk_in, negedge reset)
        if(reset==0)begin// when reset line goes low we reset the counter to zero and make output zero. 
            counter<=32'd0;
            clk_out=0;
        end
        else// else module act depending on the count
            if(counter==ratio-1)begin// if count is less than ratio, make clk_out to zero and counter to zero
                $display("ratio-1 = counter : %d",counter);
                clk_out<=0;
                counter<=32'd0;
            end
            else
                if(counter==(ratio/2)-1)begin
                  $display("ratio/2-1=counter:%d",counter);
                  clk_out<=1;
                  counter<=counter+1;
                end
                else
                  counter<=counter+1;// in all other times, add 1 to the counter
endmodule
