// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.17 Recursive properties

// ! TYPE: VARYING

module top;

reg b;

property prop_always(p);
  p and (1'b1 |=> prop_always(p));
endproperty

`ifdef NEGATIVE_TEST
property illegal_recursion_1(p);
  not prop_always(not p);
endproperty

property illegal_recursion_2(p);
  p and (1'b1 |=> not illegal_recursion_2(p));
endproperty

property illegal_recursion_3(p);
  disable iff (b)
  p and (1'b1 |=> illegal_recursion_3(p));
endproperty
`endif

property legal_3(p);
  disable iff (b) prop_always(p);
endproperty

`ifdef NEGATIVE_TEST
property illegal_recursion_4(p);
  p and (1'b1 |-> illegal_recursion_4(p));
endproperty
`endif

endmodule
