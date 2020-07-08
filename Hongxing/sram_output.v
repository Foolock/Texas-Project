module sram_output(
   input clk,
   input cs,
   input wr,
   input [63:0] din,
   input [9:0] addr,
   output [63:0] dout
);

reg [63:0] memory [1023:0];
reg [63:0] dout_tmp;

assign dout = dout_tmp; 
always @(posedge clk)
  if(cs & wr)
    memory[addr] <= din;
always @(posedge clk)   
  if(cs & ~wr)
    dout_tmp <= memory[addr];

endmodule
