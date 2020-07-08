module PE(clk,rst,input_en,in_a,in_b,out_a,out_b,out_c);

 parameter data_size=8;
 input input_en;
 input wire rst,clk;

 input wire [data_size-1:0] in_a,in_b;

 output reg [2*data_size-1:0] out_c;

 output reg [data_size-1:0] out_a,out_b;



 always @(posedge clk)begin

    if(rst) begin

      out_a=0;

      out_b=0;

      out_c=0;

    end

    else if(input_en) begin  

      out_c=out_c+in_a*in_b;

      out_a=in_a;

      out_b=in_b;

    end

 end

 

endmodule


