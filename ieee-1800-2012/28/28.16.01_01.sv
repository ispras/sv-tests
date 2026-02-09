// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.16 Gate and net delays
//     28.16.1 min:typ:max delays

// ! TYPE: POSITIVE

module top(io1, io2, dir); // iobuf
  inout io1, io2;
  input dir;

  bufif0 #(5:7:9, 8:10:12, 15:18:21) b1(io1, io2, dir);
  bufif1 #(6:8:10, 5:7:9, 13:17:19) b2(io2, io1, dir);
endmodule