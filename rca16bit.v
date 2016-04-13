`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:05 03/09/2016 
// Design Name: 
// Module Name:    rca16bit 
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
module rca16bit(a, b, sum, cout);
input [15:0] a;
input [15:0] b;

output [15:0]sum;
output cout;

wire[14:0] c;

full_adder a1(a[0],b[0],0,sum[0],c[0]);

full_adder a2(a[1],b[1],c[0],sum[1],c[1]);

full_adder a3(a[2],b[2],c[1],sum[2],c[2]);

full_adder a4(a[3],b[3],c[2],sum[3],c[3]);

full_adder a5(a[4],b[4],c[3],sum[4],c[4]);

full_adder a6(a[5],b[5],c[4],sum[5],c[5]);

full_adder a7(a[6],b[6],c[5],sum[6],c[6]);

full_adder a8(a[7],b[7],c[6],sum[7],c[7]);

full_adder a9(a[8],b[8],c[7],sum[8],c[8]);

full_adder a10(a[9],b[9],c[8],sum[9],c[9]);

full_adder a11(a[10],b[10],c[9],sum[10],c[10]);

full_adder a12(a[11],b[11],c[10],sum[11],c[11]);

full_adder a13(a[12],b[12],c[11],sum[12],c[12]);

full_adder a14(a[13],b[13],c[12],sum[13],c[13]);

full_adder a15(a[14],b[14],c[13],sum[14],c[14]);

full_adder a16(a[15],b[15],c[14],sum[15],cout);

endmodule
