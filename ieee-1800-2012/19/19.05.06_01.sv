// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points
//     19.5.6 Specifying Illegal coverage point values or transitions

// ! TYPE: POSITIVE

module top;

  bit [4:0] b;
  // A set of values or transitions associated with a coverage point
  // can be marked as illegal by specifying them as 'illegal_bins'.
  covergroup cg3;
    coverpoint b
    {
      illegal_bins bad_vals = {1, 2, 3};
      illegal_bins bad_trans = (4 => 5 => 6);
    }
  endgroup

endmodule
