// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.2 Display system tasks
//     21.2.1 The display and write tasks
//      21.2.1.5 Strength format

// ! TYPE: POSITIVE

module top;

  logic s1, s2, s3;

  always
    #15 $display($time, , "group=%b signals=%v %v %v",
                 {s1, s2, s3}, s1, s2, s3);

endmodule
