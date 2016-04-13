`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:13 02/15/2016
// Design Name:   half_adder
// Module Name:   E:/FPGA/Assignment8feb/testbench_halfadder.v
// Project Name:  Assignment8feb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_halfadder;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

		always@(a or b) begin
			$monitor("a = %b, b = %b, carry = %b, sum = %b", a, b, carry, sum); 
		end

	initial begin
 

		// Initialize Inputs
		a = 0;
		b = 0;



		#10 a = 0;b = 1;
		#10 a = 1;b = 0;
		#10 a = 1;b = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		

	end
      
endmodule

