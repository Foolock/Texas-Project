`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2020 05:50:29 PM
// Design Name: 
// Module Name: top
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


module top(
    input clk,
    input rst_b,
    input [31:0] input_sram_in, //input data
    input reg write_input, //start writing input sram
    input read_output, //start writing output sram
    input start, //start systolic array
    output [63:0] ram_out // output data
    );
    
reg [2:0]   input_sram_addr;
reg write_input_d;

always@(posedge clk)
    write_input_d <= write_input;
    
reg work_en;

always@(posedge clk or negedge rst_b)
    if(!rst_b)
        work_en <= 0;
    else if(start)
        work_en <= 1;
        

always@(posedge clk or negedge rst_b)
    if(!rst_b)
        input_sram_addr <= 3'b0;
    else if(~write_input & write_input_d | start)
        input_sram_addr <= 3'b0;
    else if(write_input | work_en)
        input_sram_addr <= input_sram_addr + 1'b1;

wire [31:0] input_sram_out;
     
sram_input sram1(
.clk(clk),
.cs(write_input | work_en),
.wr(write_input),
.din(input_sram_in),
.addr(input_sram_addr),
.dout(input_sram_out)
);

wire [63:0] array_out;
reg array_out_en;

array uut(.clk(clk),
.rst_b(rst_b),
.input_en(work_en),
.a1in(input_sram_out[31:24]),
.a2in(input_sram_out[23:16]),
.a3in(input_sram_out[15:8]),
.a4in(input_sram_out[7:0]),
.out(array_out),
.output_en(array_out_en)
); 

reg [2:0]   output_sram_addr;
reg read_output_d;

always@(posedge clk)
    read_output_d <= read_output;

always@(posedge clk or negedge rst_b)
    if(!rst_b)
        output_sram_addr <= 3'b0;
    else if(read_output&~read_output_d)
        output_sram_addr <= 3'b0;
    else if(array_out_en | read_output)
        output_sram_addr <= output_sram_addr + 1'b1;
        
sram_output sram2(
.clk(clk),
.cs(array_out_en | read_output),
.wr(array_out_en | !read_output),
.din(array_out),
.addr(output_sram_addr),
.dout(ram_out)
);
    
endmodule
