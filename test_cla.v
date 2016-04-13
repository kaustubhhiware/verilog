`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:55:03 02/29/2016
// Design Name:   cla_4bit
// Module Name:   E:/FPGA/Assignment8feb/test_cla.v
// Project Name:  Assignment8feb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cla;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;
	wire Po;
	wire Go;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	cla_4bit uut (
		.S(S), 
		.Cout(Cout), 
		.Po(Po), 
		.Go(Go), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;
	   end

	always@(A or B) 
	begin
		for(i = 0;i<256*256;i=i+1)
			#1{B,A} = i;
			#1000 $stop;
   end	
 
    initial begin
 //$monitor("A=%b B=%b Cin=%b : Sum=%b Cout=%b Po=%b Go=%b",A,B,Cin,S,Cout,Po,Go);
    end      
endmodule


