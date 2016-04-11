`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:09:39 02/15/2016
// Design Name:   rca
// Module Name:   E:/FPGA/Assignment8feb/rca_tester.v
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

module rca_tester;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;
	integer i;
	// Outputs
	wire [7:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	rca uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);


			always@(a or b) begin
			$monitor("a = %b, b = %b, cin = %b,cout = %b , sum = %b", a, b, cin, cout, sum); 
		end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
	   end
		
		initial begin
			$monitor("a = %b, b = %b, cin = %b,cout = %b , sum = %b", a, b, cin, cout, sum); 		
		end
	always@(a or b) 
	begin
		for(i = 0;i<256*256;i=i+1)
			#1{a,b} = i;
			#10 $stop;
   end	
	
	/*#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
	#10 a = $random;b = $random;
*/
	
		// Wait 100 ns for global reset to finish
		// Add stimulus here


      
endmodule

