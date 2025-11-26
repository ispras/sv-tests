// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.5 Dynamic arrays
//    7.5.1 New[ ]

// ! TYPE: POSITIVE

module top;

  int idest[], isrc[3] = '{5, 6, 7};

  initial begin
    idest = new [3] (isrc); // set size and array element data values (5, 6, 7)
  end

endmodule
