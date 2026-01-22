// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.2 Module instantiation syntax

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

module top(input [7:0] in1, in2, input [2:0] in3, input in4, clk,
           output reg [7:0] out1, out2, out3, output reg out4);
  alu m1(.ain(in1), .bin(in2), .opcode(in3), .alu_out(out1), .zero(out4));
  accum m2(.clk(clk), .dataout(out2));
  xtend m3(.din(in4), .clk(clk), .dout(out3));
endmodule
