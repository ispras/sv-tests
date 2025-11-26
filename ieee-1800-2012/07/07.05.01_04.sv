// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.5 Dynamic arrays
//    7.5.1 New[ ]

// ! TYPE: POSITIVE

module top;

  int src[3], dest1[], dest2[];

  initial begin
    src = '{2, 3, 4};
    dest1 = new[2] (src); // dest1's elements are {2, 3}.
    dest2 = new[4] (src); // dest2's elements are {2, 3, 4, 0}.
  end

endmodule
