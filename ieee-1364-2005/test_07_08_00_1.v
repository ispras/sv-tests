// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.8 pullup and pulldown sources
//       The following example declares two pullup instances. The p1 instance drives neta
//       and the p2 instance drives netb with strong strength.

// ! TYPE: POSITIVE

module test(inout neta, netb);

  pullup (strong1) p1(neta), p2(netb);
endmodule
