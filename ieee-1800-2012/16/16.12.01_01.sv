// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.1 Sequence property

// ! TYPE: POSITIVE

module top;

reg clk;
reg a, b, c;

property p3;
  b ##1 c;
endproperty

a1: assert property (@(posedge clk) a |-> p3);

endmodule
