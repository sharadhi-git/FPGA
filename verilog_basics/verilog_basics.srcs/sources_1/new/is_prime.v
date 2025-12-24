`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 21:58:01
// Design Name: 
// Module Name: is_prime
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


module is_prime(
    input c,
    input b,
    input a,
    output p
    );
    wire d,e,f;
    
    and and1(f,a,c);
    not not1(d,c);
    and and2(e,b,d);
    or or1(p,e,f);
endmodule
