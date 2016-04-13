`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:10 02/29/2016
// Design Name:   comp2
// Module Name:   E:/FPGA/Assignment8feb/test2s.v
// Project Name:  Assignment8feb
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comp2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2s;

	// Inputs
	reg [7:0] a;
	// Outputs
	wire [7:0] o;

	integer i;
	// Instantiate the Unit Under Test (UUT)
	comp2 uut (
		.a(a), 
		.o(o)
	);

always@(a) begin
			$monitor("a = %b, o = %b", a, o); 
		end

	initial begin
		// Initialize Inputs
		a = 0;
	   end
		
		initial begin
				$monitor("a = %b, o = %b", a, o); 
		end
	begin
		for(i = 0;i<256;i=i+1)
			#1{a} = i;
			#10 $stop;
   end	
      
      
endmodule

