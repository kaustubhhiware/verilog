`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:48 03/09/2016
// Design Name:   rca16bit
// Module Name:   E:/FPGA/Assignment8feb/tes_rca_16bit.v
// Project Name:  Assignment8feb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tes_rca_16bit;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	integer i;
	// Outputs
	wire [15:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	rca16bit uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.cout(cout)
	);


			always@(a or b) begin
			$monitor("a = %b, b = %b,cout = %b , sum = %b", a, b, cout, sum); 
		end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	   end
		
		initial begin
			$monitor("a = %b, b = %b, cout = %b , sum = %b", a, b, cout, sum); 		
		end
	always@(a or b) 
	begin
		/*for(i = 0;i<1024*1024;i=i+1)
			#1{a,b} = i;
			#10 $stop;*/
			
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
			
			
   end	
   


endmodule

