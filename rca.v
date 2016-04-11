`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:58 02/15/2016 
// Design Name: 
// Module Name:    rca 
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
module rca(a, b, cin, sum, cout);

input [07:0] a;
input [07:0] b;
input cin;

output [7:0]sum;
output cout;

wire[6:0] c;

full_adder a1(a[0],b[0],cin,sum[0],c[0]);

//assign sum[0] = sum[0] - 1;//this is for diff

full_adder a2(a[1],b[1],c[0],sum[1],c[1]);
full_adder a3(a[2],b[2],c[1],sum[2],c[2]);
full_adder a4(a[3],b[3],c[2],sum[3],c[3]);
full_adder a5(a[4],b[4],c[3],sum[4],c[4]);
full_adder a6(a[5],b[5],c[4],sum[5],c[5]);
full_adder a7(a[6],b[6],c[5],sum[6],c[6]);
full_adder a8(a[7],b[7],c[6],sum[7],cout);

endmodule
