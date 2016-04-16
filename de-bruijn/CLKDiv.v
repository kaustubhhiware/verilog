`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:02 04/01/2016 
// Design Name: 
// Module Name:    CLKDiv 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CLKDiv(clk, clkout, rst);

input clk, rst;
output clkout;
//wire [3:0]count;
//wire [3:0]count_temp;
//reg clkout;
reg [19:0]count;

initial
begin
count = 0;
end

always@(posedge clk or posedge rst)
	begin
		if(rst) count = 20'b0;
		else count = count + 20'b1;
		
		//count = count_temp;

		
	end 
	assign clkout = count[19];
//stable versionm
endmodule
