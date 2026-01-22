// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.2 Module instantiation syntax
//      23.3.2.2 Connecting module instance ports by name

// ! TYPE: POSITIVE

parameter logic [7:0] My_DataIn = 8'hFF;

module alu(
  output reg [7:0] alu_out,
  output reg zero,
  input [7:0] ain, bin,
  input [2:0] opcode);
  // RTL code for the alu module
endmodule

module accum(
  output reg [7:0] dataout,
  input [7:0] datain = My_DataIn,
  input clk, rst_n = 1'b1);
  // RTL code for the accumulator module
endmodule

module xtend(
  output reg [7:0] dout,
  input din,
  input clk, rst = 1'b0);
  // RTL code for the sign-extension module
endmodule

module top(
  output [15:0] dataout,
  input [7:0] ain, bin,
  input [2:0] opcode,
  input clk, rst_n, rst);
  wire [7:0] alu_out;

  // 'zero' output is unconnected
  alu alu(.alu_out(alu_out), .zero(), .ain(ain), .bin(bin), .opcode(opcode));

  // 'rst_n' is not in the port list and so gets default value 1'b1
  accum accum(.dataout(dataout[7:0]), .datain(alu_out), .clk(clk));

  // 'rst' has a default value, but has an empty port connection,
  // therefore it is left unconnected
  xtend xtend(.dout(dataout[15:8]), .din(alu_out[7]), .clk(clk), .rst());
endmodule
