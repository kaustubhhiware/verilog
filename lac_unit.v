`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:22 02/29/2016 
// Design Name: 
// Module Name:    lac_unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module lac_unit(
    output [15:0]S,
    output [3:0]P,
    output [3:0]G,
	 output Cout,
    input [15:0]A,
    input [15:0]B,
    input Cin
    );

	wire [2:0]carry;
	
cla_4bit a1(.S(S[3:0]),.Cout(carry[0]),.Po(P[0]),.Go(G[0]),.A(A[3:0]),.B(B[3:0]),.Cin(Cin));
cla_4bit a2(.S(S[7:4]),.Cout(carry[1]),.Po(P[1]),.Go(G[1]),.A(A[7:4]),.B(B[7:4]),.Cin(carry[0]));
cla_4bit a3(.S(S[11:8]),.Cout(carry[2]),.Po(P[2]),.Go(G[2]),.A(A[11:8]),.B(B[11:8]),.Cin(carry[1]));
cla_4bit a4(.S(S[15:12]),.Cout(Cout),.Po(P[3]),.Go(G[3]),.A(A[15:12]),.B(B[15:12]),.Cin(carry[2]));


endmodule
