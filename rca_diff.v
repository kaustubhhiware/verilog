`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:30 02/29/2016 
// Design Name: 
// Module Name:    rca_diff 
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
module rca_diff(a, b, cin, sum, cout);

input [07:0] a;
input [07:0] b;
input cin;

output [7:0]sum;
output cout;
reg [07:0] b2;
integer i;
wire[6:0] c;


full_adder a1(a[0],!b[0],cin,sum[0],c[0]);

full_adder a2(a[1],!b[1],c[0],sum[1],c[1]);

full_adder a3(a[2],!b[2],c[1],sum[2],c[2]);

full_adder a4(a[3],!b[3],c[2],sum[3],c[3]);

full_adder a5(a[4],!b[4],c[3],sum[4],c[4]);

full_adder a6(a[5],!b[5],c[4],sum[5],c[5]);

full_adder a7(a[6],!b[6],c[5],sum[6],c[6]);

full_adder a8(a[7],!b[7],c[6],sum[7],cout);


/* mega close
	reg[07:0] one;
		assign b2[7] = !b[7];
		assign one[7] = 1;	
		
	always@(b)
	begin
		for(i=0;i<7;i++)
			 assign one[i] = 0;
			 assign b2[i] = !b[i];
	//end


assign b2[0] = !b[0];
		assign b2[1] = !b[1];
		assign b2[2] = !b[2];
		assign b2[3] = !b[3];
		assign b2[4] = !b[4];
		assign b2[5] = !b[5];
		assign b2[6] = !b[6];
		assign b2[7] = !b[7];
		
		assign one[0] = 0;
		assign one[1] = 0;
		assign one[2] = 0;
		assign one[3] = 0;
		assign one[4] = 0;
		assign one[5] = 0;
		assign one[6] = 0;
		assign one[7] = 1;	
 
rca r(a,b2,cin,sum,cout);

	always@(sum)
	begin
		if(!cout)
			for(i=0;i<8;i++)
				assign b2[i] = !sum[i];
//	end
	
	//begin
		if(!cout)
			rca uut (
			.a(one), 
			.b(b2), 
			.cin(0), 
			.sum(sum), 
			.cout(cout)
		);
	//end
	
	mega close*/
endmodule
