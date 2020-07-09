module sram_input(
   input clk,
   input cs,
   input wr,
   input [31:0] din,
   input [2:0] addr,
   output [31:0] dout
);

reg [31:0] mem [6:0];
reg [31:0] dout_tmp;
assign dout = dout_tmp;
always @(posedge clk)
  if(cs & wr)
    mem[addr] <= din;

always @(posedge clk)
  if(cs & ~wr)
    dout_tmp <= mem[addr];

  

endmodule