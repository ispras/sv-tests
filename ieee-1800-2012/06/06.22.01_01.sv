// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.1 Matching types

// ! TYPE: POSITIVE

module top;
  typedef bit node; // 'bit' and 'node' are matching types
  typedef node type2; // 'node' and 'type2' are matching types
endmodule
