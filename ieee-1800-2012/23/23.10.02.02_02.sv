// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters
//     23.10.2 Module instance parameter value assignment
//      23.10.2.2 Parameter value assignment by name

// ! TYPE: VARYING

module top;
  // declarations & code
  wire [9:0] out_a, out_d;
  wire [4:0] out_b, out_c;
  logic [9:0] in_a, in_d;
  logic [4:0] in_b, in_c;
  logic clk;

  // legal mixture of instance with positional parameters and
  // another instance with named parameters
  vdff #(10, 15) mod_a(.out(out_a), .in(in_a), .clk(clk));
  vdff mod_b(.out(out_b), .in(in_b), .clk(clk));
  vdff #(.delay(12)) mod_c(.out(out_c), .in(in_c), .clk(clk));

`ifdef NEGATIVE_TEST
  // 'mod_d' instance with ILLEGAL mixture of parameter assignments
  vdff #(10, .delay(15)) mod_d(.out(out_d), .in(in_d), .clk(clk));
`endif
endmodule

module vdff(out, in, clk);
  parameter size = 5, delay = 1;
  output [size - 1:0] out;
  input [size - 1:0] in;
  input clk;
  logic [size - 1:0] out;
  always_comb
    out = in;
endmodule
