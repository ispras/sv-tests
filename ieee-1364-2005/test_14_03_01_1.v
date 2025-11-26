// IEEE Std 1364-2005
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       14.3.1 Specifying transition delays on module paths

// ! TYPE: POSITIVE

module test(C, Q);

  input C;
  output Q;

  specify
    // one expression specifies all transitions
    (C => Q) = 20;
    (C => Q) = 10:14:20;
  endspecify
endmodule
