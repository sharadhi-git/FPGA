`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 11:09:24
// Design Name: 
// Module Name: full_adder
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

module full_adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    wire P,G,H;
    
    half_adder ha1(A,B,P,G);//instantiating by port order
    half_adder ha2(.A(P),.B(Cin),.S(S),.Cout(H));//instantiating by names. This code is similar to half_adder ha2(P,Cin,S,H)
    
endmodule
