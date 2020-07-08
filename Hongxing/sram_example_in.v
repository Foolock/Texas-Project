module sram_input(
   input clk,
   input cs,
   input wr,
   input enable,
  input [63:0] din,
   input [9:0] addr,
   output [63:0] dout
);
wire clk_in,clk_out;
assign clk_in=clk&wr;
assign clk_out=clk&~wr;
stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM0
(.portadatain(din[0]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[0])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM1
(.portadatain(din[1]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[1])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM2
(.portadatain(din[2]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[2])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM3
(.portadatain(din[3]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[3])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM4
(.portadatain(din[4]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[4])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM5
(.portadatain(din[5]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[5])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM6
(.portadatain(din[6]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[6])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM7
(.portadatain(din[7]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[7])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM8
(.portadatain(din[8]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[8])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM9
(.portadatain(din[9]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[9])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM10
(.portadatain(din[10]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[10])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM11
(.portadatain(din[11]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[11])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM12
(.portadatain(din[12]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[12])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM13
(.portadatain(din[13]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[13])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM14
(.portadatain(din[14]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[14])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM15
(.portadatain(din[15]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[15])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM16
(.portadatain(din[16]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[16])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM17
(.portadatain(din[17]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[17])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM18
(.portadatain(din[18]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[18])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM19
(.portadatain(din[19]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[19])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM20
(.portadatain(din[20]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[20])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM21
(.portadatain(din[21]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[21])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM22
(.portadatain(din[22]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[22])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM23
(.portadatain(din[23]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[23])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM24
(.portadatain(din[24]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[24])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM25
(.portadatain(din[25]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[25])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM26
(.portadatain(din[26]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[26])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM27
(.portadatain(din[27]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[27])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM28
(.portadatain(din[28]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[28])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM29
(.portadatain(din[29]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[29])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM30
(.portadatain(din[30]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[30])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM31
(.portadatain(din[31]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[31])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM32
(.portadatain(din[32]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[32])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM33
(.portadatain(din[33]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[33])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM34
(.portadatain(din[34]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[34])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM35
(.portadatain(din[35]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[35])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM36
(.portadatain(din[36]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[36])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM37
(.portadatain(din[37]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[37])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM38
(.portadatain(din[38]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[38])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM39
(.portadatain(din[39]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[39])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM40
(.portadatain(din[40]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[40])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM41
(.portadatain(din[41]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[41])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM42
(.portadatain(din[42]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[42])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM43
(.portadatain(din[43]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[43])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM44
(.portadatain(din[44]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[44])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM45
(.portadatain(din[45]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[45])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM46
(.portadatain(din[46]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[46])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM47
(.portadatain(din[47]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[47])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM48
(.portadatain(din[48]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[48])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM49
(.portadatain(din[49]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[49])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM50
(.portadatain(din[50]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[50])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM51
(.portadatain(din[51]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[51])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM52
(.portadatain(din[52]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[52])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM53
(.portadatain(din[53]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[53])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM54
(.portadatain(din[54]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[54])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM55
(.portadatain(din[55]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[55])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM56
(.portadatain(din[56]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[56])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM57
(.portadatain(din[57]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[57])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM58
(.portadatain(din[58]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[58])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM59
(.portadatain(din[59]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[59])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM60
(.portadatain(din[60]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[60])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM61
(.portadatain(din[61]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[61])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM62
(.portadatain(din[62]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[62])
);

stratixiv_ram_block_opmode_single_port_output_type_comb_port_a_address_width_10 BRAM63
(.portadatain(din[63]),
.clr1(wr),
.clr0(wr),
.portare(),
.ena2(enable),
.ena0(enable),
.ena1(enable),
.ena3(enable),
.portaaddrstall(),
.portaaddr(addr),
.portabyteenamasks(),
.clk_portain(clk_in),
.clk_portaout(clk_out),
.portawe(cs),
.portadataout(dout[63])
);


endmodule

