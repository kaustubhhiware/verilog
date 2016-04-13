`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:45:16 02/29/2016
// Design Name:   lac_unit
// Module Name:   E:/FPGA/Assignment29Feb/test_lac.v
// Project Name:  Assignment29Feb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lac_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_lac;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg Cin;

	// Outputs
	wire [15:0] S;
	wire [3:0] P;
	wire [3:0] G;
	wire Cout;
	real i;
	// Instantiate the Unit Under Test (UUT)
	lac_unit uut (
		.S(S), 
		.P(P), 
		.G(G), 
		.Cout(Cout),
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
		
		initial begin
		//$monitor("A=%b B=%b Cin=%b : Sum=%b Cout=%b P=%b G=%b",A,B,Cin,S,Cout,P,G);
		end
	always@(A or B) 
	begin
		/*for(i = 0;i<256*256;i=i+1)
			#1{B,A} = i;
			#10 $stop;*/
			
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
			#10 A = $random;B = $random;
   end	
      
endmodule

