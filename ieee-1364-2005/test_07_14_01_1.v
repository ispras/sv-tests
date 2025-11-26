// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.14.1 min:typ:max delays
//       The following example shows min:typ:max values for rising, falling, and turn-off delays.

// ! TYPE: POSITIVE

module iobuf(io1, io2, dir);

  inout io1, io2;
  output dir;
  bufif0 #(5:7:9, 8:10:12, 15:18:21) b1(io1, io2, dir);
  bufif1 #(6:8:10, 5:7:9, 13:17:19) b2(io2, io1, dir);
endmodule
