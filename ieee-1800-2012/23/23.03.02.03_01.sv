// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.3 Module instances (hierarchy)
//     23.3.2 Module instantiation syntax
//      23.3.2.3 Connecting module instance
//               using implicit named port connections (.name)

// ! TYPE: VARYING

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

  alu alu(.alu_out, .zero(), .ain, .bin, .opcode);
  accum accum(.dataout(dataout[7:0]), .datain(alu_out), .clk, .rst_n());

`ifdef NEGATIVE_TEST
  // Error: 'rst' does not exist in the instantiation module
  xtend xtend(.dout(dataout[15:8]), .din(alu_out[7]), .clk, .rst);
`endif

endmodule
