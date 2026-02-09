// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.10 pullup and pulldown sources

// ! TYPE: POSITIVE

module top(inout neta, netb);
  pullup (strong1) p1 (neta), p2 (netb);
  pulldown p3 (neta), p4 (netb);
endmodule
