// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters
//     23.10.2 Module instance parameter value assignment
//      23.10.2.2 Parameter value assignment by name

// ! TYPE: POSITIVE

module top;
wire [9:0] out_a, out_d;
wire [4:0] out_b, out_c;
logic [9:0] in_a, in_d;
logic [4:0] in_b, in_c;
logic clk;

// testbench clock & stimulus generation code ...

// Four instances of 'vdff' with parameter value assignment by name

// 'mod_a' has new parameter values 'size = 10' and 'delay = 15'
// 'mod_b' has default parameters ('size = 5', 'delay = 1')
// 'mod_c' has one default 'size = 5' and one new 'delay = 12'
// 'mod_d' has a new parameter value 'size = 10'.
// delay retains its default value

vdff #(.size(10), .delay(15)) mod_a(.out(out_a), .in(in_a), .clk(clk));
vdff mod_b(.out(out_b), .in(in_b), .clk(clk));
vdff #(.delay(12)) mod_c(.out(out_c), .in(in_c), .clk(clk));
vdff #(.delay(), .size(10)) mod_d(.out(out_d), .in(in_d), .clk(clk));
endmodule

module vdff (out, in, clk);
  parameter size = 5, delay = 1;
  output [size - 1:0] out;
  input [size - 1:0] in;
  input clk;
  logic [size - 1:0] out;
  always_comb
    out = in;
endmodule
