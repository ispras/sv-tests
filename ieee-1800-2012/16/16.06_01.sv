// IEEE Std 1800-2012
//   16. Assertions
//    16.6 Boolean expressions

// ! TYPE: POSITIVE

module top;

  reg a;
  integer b;
  reg [7:0] q[31:0];

  property p1;
    $rose(a) |-> q[0];
  endproperty

  property p2;
    integer l_b;
    ($rose(a), l_b = b) |-> ##[3:10] q[l_b];
  endproperty

endmodule
