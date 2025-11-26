// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.1 Display system tasks
//       17.1.1 The display and write tasks
//         17.1.1.5 Strength format

// ! TYPE: POSITIVE

module test(s1, s2, s3);

  input s1, s2, s3;

  always
  #15 $display($time,, "group=%b signals=%v %v %v", {s1, s2, s3}, s1, s2, s3);
endmodule
