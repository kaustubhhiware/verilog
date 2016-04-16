`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:06 03/28/2016
// Design Name:   CLKDiv
// Module Name:   E:/FPGA/Group42_D2/TestCLKDiv.v
// Project Name:  Group42_D2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLKDiv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestCLKDiv;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire clkout;

	always begin #5 clk = ~clk; end
	
	// Instantiate the Unit Under Test (UUT)
	CLKDiv uut (
		.clk(clk), 
		.clkout(clkout), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

