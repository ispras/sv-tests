// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.12 Until property

// ! TYPE: POSITIVE

module top;

reg a, b;

property p1;
  a until b;
endproperty

property p2;
  a s_until b;
endproperty

property p3;
  a until_with b;
endproperty

property p4;
  a s_until_with b;
endproperty

endmodule
