// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.2 Overriding module parameter values
//       12.2.1 defparam statement
//         In the case of multiple defparams for a single parameter, the parameter takes the value
//         of the last defparam statement encountered in the source text. When defparams are
//         encountered in multiple source files, e.g., found by library searching, the defparam from
//         which the parameter takes its value is undefined. The module annotate has the defparam
//         statement, which overrides size and delay parameter values for instances m1 and m2 in the
//         top-level module top. The modules top and annotate would both be considered top-level
//         modules.

// ! TYPE: POSITIVE

module top;

  reg clk;
  reg [0:4] in1;
  reg [0:9] in2;
  wire [0:4] o1;
  wire [0:9] o2;

  vdff m1(o1, in1, clk);
  vdff m2(o2, in2, clk);
endmodule

module vdff(out, in, clk);

  parameter size = 1, delay = 1;

  input [0:size-1] in;
  input clk;
  output [0:size-1] out;
  reg [0:size-1] out;

  always @(posedge clk)
    # delay out = in;
endmodule

module annotate;
  defparam
    top.m1.size = 5,
    top.m1.delay = 10,
    top.m2.size = 10,
    top.m2.delay = 20;
endmodule
