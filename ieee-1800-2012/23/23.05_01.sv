// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.5 Extern modules

// ! TYPE: POSITIVE

extern module m(a, b, c, d);
extern module a #(parameter size = 8, parameter type TP = logic [7:0])
                 (input [size:0] a, output TP b);

module top();
  wire [8:0] a;
  logic [7:0] b;
  wire c, d;

  m mm(.*);
  a aa(.*);

  top2 top2();
endmodule

// Modules 'm' and 'a' are then assumed to be instantiated as follows:
module top2();
  wire [8:0] a;
  logic [7:0] b;
  wire c, d;

  m mm(a, b, c, d);
  a aa(a, b);
endmodule

module m(.*);
  input wire [8:0] a;
  input logic [7:0] b;
  input c;
  output d;
endmodule

module a(.*);
endmodule

// is equivalent to writing
// module m(a, b, c, d);
//   input wire [8:0] a;
//   input logic [7:0] b;
//   input c;
//   output d;
// endmodule

// module a #(parameter size = 8, parameter type TP = logic [7:0])
//           (input [size:0] a, output TP b);
// endmodule
