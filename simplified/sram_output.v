module sram_output(
   input clk,
   input cs,
   input wr,
   input [63:0] din,
   input [2:0] addr,
   output [63:0] dout
);

reg [63:0] mem [0:6];
reg [63:0] dout_tmp;
assign dout = dout_tmp;
always @(posedge clk)
  if(cs & wr)
    mem[addr] <= din;

always @(posedge clk)
  if(cs & ~wr)
    dout_tmp <= mem[addr];

endmodule