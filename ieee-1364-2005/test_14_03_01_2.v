// IEEE Std 1364-2005
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       14.3.1 Specifying transition delays on module paths

// ! TYPE: POSITIVE

module test(C, Q);

  input C;
  output Q;

  specify
    // two expressions specify rise and fall delays
    specparam  tPLH1 = 12, tPHL1 = 25;
    specparam  tPLH2 = 12:16:22, tPHL2 = 16:22:25;
    (C => Q) = (tPLH1, tPHL1);
    (C => Q) = (tPLH2, tPHL2);
  endspecify
endmodule
