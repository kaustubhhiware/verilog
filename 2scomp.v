`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:49 02/29/2016 
// Design Name: 
// Module Name:    2scomp 
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
module 2scomp(
    input a,
    output o
    );
	input [07:0] a;
	output [07:0] o;
	reg cout;
	reg[07:0] one;
	one = 8'b00000001;
	
	integer i;
	
	begin
		for(i=0;i<8;i++)
			if(a[i])a[i] = 0;
			else a[i] = 1;
	end
	
		rca uut (
		.a(a), 
		.b(one), 
		.cin(0), 
		.sum(o), 
		.cout(cout)
	);
endmodule
