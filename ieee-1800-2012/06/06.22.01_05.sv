// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.1 Matching types

// ! TYPE: POSITIVE

module top;
  typedef byte MEM_BYTES [256];
  typedef bit signed [7:0] MY_MEM_BYTES [256]; // 'MY_MEM_BYTES' matches
                                               // 'MEM_BYTES'
  typedef logic [1:0] [3:0] NIBBLES;
  typedef logic [7:0] MY_BYTE; // 'MY_BYTE' and 'NIBBLES' are not matching types

  typedef logic MD_ARY [][2:0];
  typedef logic MD_ARY_TOO [][0:2]; // Does not match 'MD_ARY'
endmodule
