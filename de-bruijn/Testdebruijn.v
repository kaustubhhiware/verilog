`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:52:08 03/28/2016
// Design Name:   top
// Module Name:   E:/FPGA/Group42_D2/testtop.v
// Project Name:  Group42_D2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testdebruijn;

	// Inputs
	reg [3:0] seed;
	reg rst;
	reg sel;
	reg clk;

	// Outputs
	wire [3:0] state;
	always begin #20 clk = ~clk; end
	// Instantiate the Unit Under Test (UUT)
	debruijn uut (
		.seed(seed), 
		.rst(rst), 
		.sel(sel), 
		.clk(clk), 
		.state(state)
	);

	initial begin
		// Initialize Inputs
		seed = 1;
		rst = 1;
		sel = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#1;
      rst = 0;
		sel = 0;
		
		#20;
		sel = 1;
		// Add stimulus here

	end
      
endmodule

