// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.2 ANSI style list of port declarations

// ! TYPE: POSITIVE

module mymod(output logic [3:0] P1,
             output logic [3:0] P2,
             ref int Y,
             input logic R);
  logic [7:0] r;
  assign P1 = r[3:0];
  assign P2 = r[7:4];
endmodule

module top;

  logic [3:0] P1_val;
  logic [3:0] P2_val;
  int x;
  logic r;

  mymod inst(.P1(P1_val), .P2(P2_val), .Y(x), .R(r));

endmodule
