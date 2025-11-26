// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.13 Eventually property

// ! TYPE: POSITIVE

module top;

reg a;

property p1;
  s_eventually a;
endproperty

property p2;
  s_eventually always a;
endproperty

property p3;
  always s_eventually a;
endproperty

property p4;
  eventually [2:5] a;
endproperty

property p5;
  s_eventually [2:5] a;
endproperty

`ifdef NEGATIVE_TEST
property p6;
  eventually [2:$] a; // Illegal
endproperty
`endif

property p7;
  s_eventually [2:$] a;
endproperty

endmodule
