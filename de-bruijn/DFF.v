`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:35:30 04/01/2016 
// Design Name: 
// Module Name:    DFF 
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
module DFF(d,out,clk,rst);
input d, rst, clk;
output out;
reg out;

always@(posedge clk or posedge rst)
	begin
	
		if(rst) out <= 0;
		else out <= d;
	end
	
endmodule
