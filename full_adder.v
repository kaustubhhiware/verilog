`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:02 02/15/2016 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(a, b, c_in, sum,c_out);
 
input  a;
input  b;
input  c_in;
output sum;
output c_out;

wire w_sum1;
wire w_carry1;
wire w_carry2;

assign c_out = w_carry1 | w_carry2;


half_adder u1_half_adder
(
.a(a),
.b(b),
.sum(w_sum1),
.carry(w_carry1)
);                    
half_adder u2_half_adder
(
.a(w_sum1),
.b(c_in),
.sum(sum),
.carry(w_carry2)
);               
endmodule

