`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2020 01:12:59 PM
// Design Name: 
// Module Name: tb
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


module tb();

reg clk;
reg rst_b;
reg input_en;
reg [7:0] a1in;
reg [7:0] a2in;
reg [7:0] a3in;
reg [7:0] a4in;
wire [15:0] y0;
wire [15:0] y1;
wire [15:0] y2;
wire [15:0] y3;

array uut(
.clk(clk),
.rst_b(rst_b),
.input_en(input_en),
.a1in(a1in),
.a2in(a2in),
.a3in(a3in),
.a4in(a4in),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3)
);

initial begin
    rst_b = 0;
    #25 rst_b = 1;
end

initial begin
    clk = 1;
    forever #25 clk = ~clk;
end

initial begin
    input_en = 0;
    #50 input_en = 1;
end

initial begin
    a1in = 0; a2in = 0; a3in = 0; a4in = 0;
    #50 a1in = 1; a2in = 0; a3in = 0; a4in = 0;
    #50 a1in = 1; a2in = 1; a3in = 0; a4in = 0;
    #50 a1in = 1; a2in = 0; a3in = 1; a4in = 0;
    #50 a1in = 1; a2in = 0; a3in = 1; a4in = 0;
    #50 a1in = 0; a2in = 0; a3in = 1; a4in = 0;
    #50 a1in = 0; a2in = 0; a3in = 1; a4in = 0;
    #50 a1in = 0; a2in = 0; a3in = 0; a4in = 0;
end

endmodule
