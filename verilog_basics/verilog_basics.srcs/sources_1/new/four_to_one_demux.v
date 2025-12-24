`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 15:35:45
// Design Name: 
// Module Name: four_to_one_demux
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


module four_to_one_demux(
    input I,
    input [1:0] sel,
    output reg [3:0] Y
    );
   always @(sel,I)
    case (sel)
        2'b00:Y={3'b000,I};
        2'b01:Y={2'b00,I,1'b0};
        2'b10:Y={1'b0,I,2'b00};
        2'b11:Y={I,3'b000};
   endcase
   
endmodule
