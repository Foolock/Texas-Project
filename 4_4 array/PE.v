`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2020 02:04:12 PM
// Design Name: 
// Module Name: PE
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


module PE(
  input clk,
  input rst_b,
  input input_en,
  input [7:0] ain,
  input [7:0] bin,
  input [15:0] cin,
  output reg [7:0] aout,
  output reg [15:0] cout
);


always @(posedge clk or negedge rst_b)
  if(!rst_b)
    cout <= 16'd0;
  else if(input_en)
    cout <= cin + ain * bin;    

always @(posedge clk)
  if(input_en)
    begin
       aout <= ain;
    end

//always @(posedge clk)
//  output_en <= input_en;

endmodule
