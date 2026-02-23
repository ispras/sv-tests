// IEEE Std 1800-2012
//   30. Specify blocks
//    30.5 Assigning delays to module paths
//     30.5.1 Specifying transition delays on module paths

// ! TYPE: POSITIVE

module top(input C, output Q);
  specify
    // one expression specifies all transitions
    (C => Q) = 20;
    (C => Q) = 10:14:20;

    // two expressions specify rise and fall delays
    specparam tPLH1 = 12, tPHL1 = 25;
    specparam tPLH2 = 12:16:22, tPHL2 = 16:22:25;
    (C => Q) = (tPLH1, tPHL1);
    (C => Q) = (tPLH2, tPHL2);

    // three expressions specify rise, fall, and z transition delays
    specparam tPLH3 = 12, tPHL3 = 22, tPz1 = 34;
    specparam tPLH4 = 12:14:30, tPHL4 = 16:22:40, tPz2 = 22:30:34;
    (C => Q) = (tPLH3, tPHL3, tPz1);
    (C => Q) = (tPLH4, tPHL4, tPz2);

    // six expressions specify transitions to/from 0, 1, and z
    specparam t01 = 12, t10 = 16, t0z = 13, tz1 = 10, t1z = 14, tz0 = 34;
    (C => Q) = (t01, t10, t0z, tz1, t1z, tz0);
    specparam T01 = 12:14:24, T10 = 16:18:20, T0z = 13:16:30;
    specparam Tz1 = 10:12:16, T1z = 14:23:36, Tz0 = 15:19:34;
    (C => Q) = (T01, T10, T0z, Tz1, T1z, Tz0);

    // twelve expressions specify all transition delays explicitly
    specparam t02 = 10, t11 = 12, t2z = 14, tz2 = 15, t3z = 29, tz3 = 36,
              t0x = 14, tx1 = 15, t1x = 15, tx0 = 14, txz = 20, tzx = 30;
    (C => Q) = (t02, t11, t2z, tz2, t3z, tz3, t0x, tx1, t1x, tx0, txz, tzx);
  endspecify
  endmodule
