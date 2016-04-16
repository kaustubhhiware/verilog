`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:31 03/28/2016
// Design Name:   MUX
// Module Name:   E:/FPGA/Group42_D2/TestMUX.v
// Project Name:  Group42_D2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestMUX;

	// Inputs
	reg a;
	reg b;
	reg sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUX uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#10;
      a = 0;
		b = 1;
		sel = 0;  
		// Add stimulus here
		#10;
      a = 0;
		b = 1;
		sel = 1;  
		
	end
      
endmodule

