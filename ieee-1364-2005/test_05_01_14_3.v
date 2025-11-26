// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.14 Concatenations
//        Example 3

// ! TYPE: VARYING

module test;

  parameter P = 32;

  reg [31:0] a;
  wire [31:0] b;
  wire [31:0] c;

  // The following is legal for all P from 1 to 32
  assign b[31:0] = { {32-P{1'b1}}, a[P-1:0] } ;

`ifdef NEGATIVE_TEST
  // The following is illegal for P=32 because the zero
  // replication appears alone within a concatenation
  assign c[31:0] = { {{32-P{1'b1}}}, a[P-1:0] }

  // The following is illegal for P=32
  initial
    $displayb({32-P{1'b1}}, a[P-1:0]);
`endif
endmodule
