`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:25 03/28/2016 
// Design Name: 
// Module Name:    top 
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
module debruijn(seed, rst, sel, clk, state
    );

input[3:0] seed;
input rst, sel, clk;
output[3:0] state;
wire clkslow, w1, w1_, w2, w2_, w3, w3_, w4, w4_, w5;

//assign clkslow = clk;
CLKDiv div(clk,clkslow,rst);

DFF D3(w1_, w2, clkslow, rst);
DFF D2(w2_, w3, clkslow, rst);
DFF D1(w3_, w4, clkslow, rst);
DFF D0(w4_, w5, clkslow, rst);

assign w1 = w4 ^ (w5 ^ ~(w2 | w3 | w4));
//to exclude generation of 0000 state , 
//assign w1 = w4 ^ w5;

MUX M3(seed[3], w1, sel, w1_);
MUX M2(seed[2], w2, sel, w2_);
MUX M1(seed[1], w3, sel, w3_);
MUX M0(seed[0], w4, sel, w4_);

//assign w1 = w4 ^ w5;
assign state[0] = w5;
assign state[1] = w4;
assign state[2] = w3;
assign state[3] = w2;

endmodule
