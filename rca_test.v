		`timescale 1ns / 1ps

		////////////////////////////////////////////////////////////////////////////////
		// Company: 
		// Engineer:
		//
		// Create Date:   15:34:00 02/15/2016
		// Design Name:   rca
		// Module Name:   E:/FPGA/Assignment8feb/rca_test.v
		// Project Name:  Assignment8feb
		// Target Device:  
		// Tool versions:  
		// Description: 
		//
		// Verilog Test Fixture created by ISE for module: rca
		//
		// Dependencies:
		// 
		// Revision:
		// Revision 0.01 - File Created
		// Additional Comments:
		// 
		////////////////////////////////////////////////////////////////////////////////

		module rca_test;

		reg [7:0] a;
		reg [7:0] b;
		reg cin;

		wire [7:0] sum;
		wire cout;	

		rca uut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout) );

		initial 
	begin 
	repeat(10) 
	begin 
	a = $random ; 
	b = $random; 
	$display("a = %b,b = %b,cout = %b,sum = %b, cin = %b",a,b,cout,sum,cout); 
	end 
	end 

		endmodule

