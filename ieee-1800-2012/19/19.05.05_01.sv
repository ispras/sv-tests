// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points
//     19.5.5 Excluding coverage point values or transitions

// ! TYPE: POSITIVE

module top;

  bit [4:0] a;
  // A set of values or transitions associated with a coverage point can
  // be explicitly excluded from coverage by specifying them as 'ignore_bins'.
  covergroup cg23;
  coverpoint a
    {
      ignore_bins ignore_vals = {7, 8};
      ignore_bins ignore_trans = (1 => 3 => 5);
    }
  endgroup

endmodule
