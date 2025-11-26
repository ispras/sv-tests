// IEEE Std 1364-2005
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       14.3.1 Specifying transition delays on module paths

// ! TYPE: POSITIVE

module test(C, Q);

  input C;
  output Q;

  specify
    // three expressions specify rise, fall, and z transition delays
    specparam  tPLH1 = 12, tPHL1 = 22, tPz1 = 34;
    specparam  tPLH2 = 12:14:30, tPHL2 = 16:22:40, tPz2 = 22:30:34;
    (C => Q) = (tPLH1, tPHL1, tPz1);
    (C => Q) = (tPLH2, tPHL2, tPz2);
  endspecify
endmodule
