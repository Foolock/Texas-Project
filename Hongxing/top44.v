module top(
  input clk,
  input rst_b,
  input wr_in,
  input wr_out,
  input input_en_ramin,
  input input_en_sys,
  input input_en_ramout,
  input output_en_sys,
  //input accout_cnt_in,
  input [10:0]adder_in,
  input [10:0]adder_out,
  input [63:0] ram_din,
  output [63:0] rd_sram_out
);

wire [63:0] input_dout;
reg [63:0] accout;
sram_input   sram_input(
   .clk ( clk ),
   .cs ( input_en_ramin ),
   .wr ( wr_in ),
   .din ( ram_din ),
   .addr  ( adder_in ),
   .dout ( input_dout )
);

array array44(
 .clk(clk),
 .rst_b(rst_b),
.a1in(input_dout[7:0]),
.a2in(input_dout[15:8]),
.a3in(input_dout[23:16]),
.a4in(input_dout[31:24]),
.b1in(input_dout[39:32]),
.b2in(input_dout[47:40]),
.b3in(input_dout[55:48]),
.b4in(input_dout[63:56]),
.output_en(output_en_sys),
 .input_en(input_en_sys),
//.accout_cnt(accout_cnt_in),
.accout(accout) );

sram_output sram_output(
   .clk ( clk ),
   .cs ( input_en_ramout ),
   .wr ( wr_out),
   .din ( accout ),
   .addr ( adder_out ),
   .dout ( rd_sram_out)
);
endmodule
