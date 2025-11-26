// IEEE Std 1364-2005
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       14.3.1 Specifying transition delays on module paths

// ! TYPE: POSITIVE

module test(C, Q);

  input C;
  output Q;

  specify
    // twelve expressions specify all transition delays explicitly
    specparam t01=10, t10=12, t0z=14, tz1=15, t1z=29, tz0=36,
              t0x=14, tx1=15, t1x=15, tx0=14, txz=20, tzx=30;
    (C => Q) = (t01, t10, t0z, tz1, t1z, tz0,
                t0x, tx1, t1x, tx0, txz, tzx);
  endspecify
endmodule
