module array(
   input clk,
   input rst_b,
   input [7:0] a1in,
   input [7:0] a2in,
   input [7:0] a3in,
   input [7:0] a4in,
   input [7:0] b1in,
   input [7:0] b2in,
   input [7:0] b3in,
   input [7:0] b4in,
   //input [2:0] output_cnt,
   input output_en,
   input input_en,
   output reg [63:0] accout
);
//wire accout_en;
//wire [2:0]accout_cnt;

//assign accout_en=output_en;
//assign accout_cnt=output_cnt;

wire [7:0] aout11, bout11, aout12, bout12, aout13, bout13,aout14,bout14;
wire [7:0] aout21, bout21, aout22, bout22, aout23, bout23,aout24,bout24;
wire [7:0] aout31, bout31, aout32, bout32, aout33, bout33,aout34,bout34;
wire [7:0] aout41, bout41, aout42, bout42, aout43, bout43,aout44,bout44;

wire [15:0] accout11, accout12, accout13,accout14;
wire [15:0] accout21, accout22, accout23,accout24;
wire [15:0] accout31, accout32, accout33,accout34;
wire [15:0] accout41, accout42, accout43,accout44;

//the first row PE
PE PE11(clk,  rst_b,  input_en,a1in,   b1in, aout11, bout11, accout11);
PE PE12(clk,  rst_b,input_en,  aout11, b2in, aout12, bout12, accout12);
PE PE13(clk,  rst_b,input_en,  aout12, b3in, aout13, bout13, accout13);
PE PE14(clk,  rst_b, input_en, aout13, b4in, aout14, bout14, accout14);
//the second row PE
PE PE21(clk,  rst_b, input_en, a2in,  bout11, aout21, bout21, accout21);
PE PE22(clk,  rst_b, input_en, aout21, bout12, aout22, bout22, accout22);
PE PE23(clk,  rst_b, input_en, aout22, bout13, aout23, bout23, accout23);
PE PE24(clk,  rst_b, input_en, aout23, bout14, aout24, bout24, accout24);
//the second row PE
PE PE31(clk,  rst_b, input_en, a3in,  bout21, aout31, bout31, accout31);
PE PE32(clk,  rst_b, input_en, aout31, bout22, aout32, bout32, accout32);
PE PE33(clk,  rst_b, input_en, aout32, bout23, aout33, bout33, accout33);
PE PE34(clk,  rst_b, input_en, aout33, bout24, aout34, bout34, accout34);

PE PE41(clk,  rst_b, input_en, a4in,  bout31, aout41, bout41, accout41);
PE PE42(clk,  rst_b, input_en, aout41, bout32, aout42, bout42, accout42);
PE PE43(clk,  rst_b, input_en, aout42, bout33, aout43, bout43, accout43);
PE PE44(clk,  rst_b, input_en, aout43, bout34, aout44, bout44, accout44);

wire out_en;
assign out_en = output_en;
reg [2:0] output_cnt;
always @(posedge clk or negedge rst_b)
  if(!rst_b)
   output_cnt <= 4'b0;
  else if(out_en)
   output_cnt <= output_cnt + 1;

always @(*)
  if(output_en)
    case(output_cnt)
      3'd0: accout={accout11,accout12,accout13,accout14};
      3'd1: accout={accout21,accout22,accout23,accout24};
      3'd2: accout={accout31,accout32,accout33,accout34};
      3'd3: accout={accout41,accout42,accout43,accout44};
	default: accout <= 64'b0;
    endcase
  else
    accout <= 64'b0;

endmodule
