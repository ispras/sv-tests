// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.2 Module instantiation syntax
//      23.3.2.4 Connecting module instances
//               using wildcard named port connections ( .*)

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
  input clk, rst_n);
  wire [7:0] alu_out;

  // mixture of named port connections and
  // implicit '.name' port connections
  alu alu(.ain(ain), .bin(bin), .alu_out, .zero(), .opcode);

  // positional port connections
  accum accum(dataout[7:0], alu_out, clk, rst_n);

  // mixture of named port connections and implicit '.*' port connections
  xtend xtend(.dout(dataout[15:8]), .*, .din(alu_out[7]));

endmodule
