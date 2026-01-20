// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.3 Rules for determining port kind, data type, and direction

// ! TYPE: VARYING

// Declarations must follow the port list because the first port
// does not have a direction, kind, or type specified
module mh_nonansi(x, y);
  input wire x;
  output tri0 y;
endmodule

module mh0(wire x); // 'inout wire logic x'
endmodule

module mh1(wire integer x); // 'inout wire integer x'
endmodule

module mh2(inout integer x); // 'inout wire integer x'
endmodule

module mh3([5:0] x); // 'inout wire logic [5:0] x'
endmodule

`ifdef NEGATIVE_TEST
module mh4(var x); // ERROR: direction defaults to 'inout',
                   // which cannot be 'var'
endmodule
`endif

module mh5(input x); // 'input wire logic x'
endmodule

module mh6(input var x); // 'input var logic x'
endmodule

module mh7(input var integer x); // 'input var integer x'
endmodule

module mh8(output x); // 'output wire logic x'
endmodule

module mh9(output var x); // 'output var logic x'
endmodule

module mh10(output signed [5:0] x); // 'output wire logic signed [5:0] x'
endmodule

module mh11(output integer x); // 'output var integer x'
endmodule

module mh12(ref [5:0] x); // 'ref var logic [5:0] x'
endmodule

module mh13(ref x [5:0]); // 'ref var logic x [5:0]'
endmodule

module mh14(wire x, y[7:0]); // 'inout wire logic x'
                             // 'inout wire logic y[7:0]'
endmodule

module mh15(wire integer x, wire signed [5:0] y);
  // 'inout wire integer x'
  // 'inout wire logic signed [5:0] y'
endmodule

module mh16([5:0] x, wire y); // 'inout wire logic [5:0] x'
                              // 'inout wire logic y'
endmodule

module mh17(input var integer x, wire y); // 'input var integer x'
                                          // 'input wire logic y'
endmodule

module mh18(output var x, input y); // 'output var logic x'
                                    // 'input wire logic y'
endmodule

module mh19(output signed [5:0] x, integer y);
  // 'output wire logic signed [5:0] x'
  // 'output var integer y'
endmodule

module mh20(ref [5:0] x, y); // 'ref var logic [5:0] x'
                             // 'ref var logic [5:0] y'
endmodule

module mh21(ref x [5:0], y); // 'ref var logic x [5:0]'
                             // 'ref var logic y'
endmodule

module mh22 (input wire integer p_a, output logic [5:0] p_b, input integer p_c);
endmodule

module top;

  logic x_nonansi, x5, x6, x8, x9, x17, x18, y18;
  tri0 y_nonansi;
  wire x0, x14, x15, y16, y17, y21;
  wire [31:0] x1, x2;
  wire [5:0] x3, x16;
  wire [5:0] x12, x20, y20;
  integer x7, x11, y19, p_a, p_c;
  wire signed [5:0] x10, y15;
  logic [5:0] x19, p_b;
  wire x13 [5:0], x21 [5:0];
  wire y14 [7:0];

  mh_nonansi inst_nonansi(.x(x_nonansi), .y(y_nonansi));
  mh0 inst0(.x(x0));
  mh1 inst1(.x(x1));
  mh2 inst2(.x(x2));
  mh3 inst3(.x(x3));
  mh5 inst5(.x(x5));
  mh6 inst6(.x(x6));
  mh7 inst7(.x(x7));
  mh8 inst8(.x(x8));
  mh9 inst9(.x(x9));
  mh10 inst10(.x(x10));
  mh11 inst11(.x(x11));
  mh12 inst12(.x(x12));
  mh13 inst13(.x(x13));
  mh14 inst14(.x(x14), .y(y14));
  mh15 inst15(.x(x15), .y(y15));
  mh16 inst16(.x(x16), .y(y16));
  mh17 inst17(.x(x17), .y(y17));
  mh18 inst18(.x(x18), .y(y18));
  mh19 inst19(.x(x19), .y(y19));
  mh20 inst20(.x(x20), .y(y20));
  mh21 inst21(.x(x21), .y(y21));
  mh22 inst22(.p_a(p_a), .p_b(p_b), .p_c(p_c));
endmodule
