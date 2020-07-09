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
reg [31:0] input_sram_in;
reg write_input;
reg read_output;
reg start;
wire [63:0] ram_out;

top uut(
.clk(clk),
.rst_b(rst_b),
.input_sram_in(input_sram_in),
.write_input(write_input),
.read_output(read_output),
.start(start),
.ram_out(ram_out)
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
    write_input = 0;
    #25 write_input = 1;
    #350 write_input = 0;
end

initial begin
    start = 0;
    #475 start = 1;

	#50 start = 0;
end

initial begin
    input_sram_in = 32'h00000000;
    #50 input_sram_in = 32'h01000000;
    #50 input_sram_in = 32'h01020000;
    #50 input_sram_in = 32'h01020300;
    #50 input_sram_in = 32'h01020304;
    #50 input_sram_in = 32'h00020304;
    #50 input_sram_in = 32'h00000304;
    #50 input_sram_in = 32'h00000004;
    #50 input_sram_in = 32'h00000000;
end

initial begin
    read_output = 0;
    #2000 read_output = 1;
end

endmodule