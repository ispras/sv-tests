// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.3 Parameterized modules

// ! TYPE: POSITIVE

module top(in, clk, read, write, reset, out, full, empty);
  parameter MSB = 3, LSB = 0, DEPTH = 4; // these parameters can be redefined
  input [MSB:LSB] in;
  input clk, read, write, reset;
  output [MSB:LSB] out;
  output full, empty;
  wire [MSB:LSB] in;
  wire clk, read, write, reset;
  logic [MSB:LSB] out;
  logic full, empty;
endmodule
