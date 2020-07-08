`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2020 02:05:14 PM
// Design Name: 
// Module Name: array
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module array(
   input clk,
   input rst_b,
   input input_en,
   input [7:0] a1in,
   input [7:0] a2in,
   input [7:0] a3in,
   input [7:0] a4in,
   output [15:0] y0,
   output [15:0] y1,
   output [15:0] y2,
   output [15:0] y3
    );
    
reg  input_en2, input_en3, input_en4, input_en5, input_en6, input_en7, input_en8;
always@(posedge clk)
  begin
    input_en2 <= input_en;
    input_en3 <= input_en2;
    input_en4 <= input_en3;
    input_en5 <= input_en4;
    input_en6 <= input_en5;
    input_en7 <= input_en6;
    input_en8 <= input_en7;
  end
  
wire [7:0] aout11, aout12, aout13, aout14;
wire [7:0] aout21, aout22, aout23, aout24;
wire [7:0] aout31, aout32, aout33, aout34;
wire [7:0] aout41, aout42, aout43, aout44;
wire [15:0] cout11, cout12, cout13, cout14;
wire [15:0] cout21, cout22, cout23, cout24;
wire [15:0] cout31, cout32, cout33, cout34;
wire [15:0] cout41, cout42, cout43, cout44;

localparam weight11 = 8'd1;
localparam weight21 = 8'd2;
localparam weight31 = 8'd3;
localparam weight41 = 8'd4;
localparam weight12 = 8'd1;
localparam weight22 = 8'd2;
localparam weight32 = 8'd3;
localparam weight42 = 8'd4;
localparam weight13 = 8'd1;
localparam weight23 = 8'd2;
localparam weight33 = 8'd3;
localparam weight43 = 8'd4;
localparam weight14 = 8'd1;
localparam weight24 = 8'd2;
localparam weight34 = 8'd3;
localparam weight44 = 8'd4;

//first row
PE PE11(clk, rst_b, input_en, a1in, weight11, 16'd0, aout11, cout11);
PE PE12(clk, rst_b, input_en2, a2in, weight21, cout11, aout12, cout12);
PE PE13(clk, rst_b, input_en3, a3in, weight31, cout12, aout13, cout13);
PE PE14(clk, rst_b, input_en4, a4in, weight41, cout13, aout14, y0);

//second row
PE PE21(clk, rst_b, input_en2, aout11, weight12, 16'd0, aout21, cout21);
PE PE22(clk, rst_b, input_en3, aout12, weight22, cout21, aout22, cout22);
PE PE23(clk, rst_b, input_en4, aout13, weight32, cout22, aout23, cout23);
PE PE24(clk, rst_b, input_en5, aout14, weight42, cout23, aout24, y1);

//third row
PE PE31(clk, rst_b, input_en3, aout21, weight13, 16'd0, aout31, cout31);
PE PE32(clk, rst_b, input_en4, aout22, weight23, cout31, aout32, cout32);
PE PE33(clk, rst_b, input_en5, aout23, weight33, cout32, aout33, cout33);
PE PE34(clk, rst_b, input_en6, aout24, weight43, cout33, aout34, y2);

//forth row
PE PE41(clk, rst_b, input_en4, aout31, weight14, 16'd0, aout41, cout41);
PE PE42(clk, rst_b, input_en5, aout32, weight24, cout41, aout42, cout42);
PE PE43(clk, rst_b, input_en6, aout33, weight34, cout42, aout43, cout43);
PE PE44(clk, rst_b, input_en7, aout34, weight44, cout43, aout44, y3);
    
endmodule
