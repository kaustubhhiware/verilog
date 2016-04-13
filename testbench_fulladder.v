`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:58 02/15/2016
// Design Name:   full_adder
// Module Name:   E:/FPGA/Assignment8feb/testbench_fulladder.v
// Project Name:  Assignment8feb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_fulladder;

	// Inputs
	reg a;
	reg b;
	reg c_in;

	// Outputs
	wire sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out)
	);
	
			always@(a or b or c_in) begin
			$monitor("a = %b, b = %b, c_in = %b,c_out = %b , sum = %b", a, b, c_in, c_out, sum); 
		end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		#10 a = 0;b = 0;c_in = 0;
		#10 a = 0;b = 0;c_in= 1;
		#10 a = 0;b = 1;c_in= 0;
		#10 a = 0;b = 1;c_in= 1;
		#10 a = 1;b = 0;c_in= 0;
		#10 a = 1;b = 0;c_in= 1;
		#10 a = 1;b = 1;c_in= 0;
		#10 a = 1;b = 1;c_in= 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

