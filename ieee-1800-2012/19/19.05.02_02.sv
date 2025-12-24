// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points
//     19.5.2 Specifying bins for transitions

// ! TYPE: POSITIVE

module top(input clk);

  bit [4:0] v;
  covergroup sg @(posedge clk);
    coverpoint v
    {
      bins b2 = (2 [-> 3:5]); // '3' to '5' nonconsecutive '2'
      bins b3 = (3 [-> 3:5]);  // '3' to '5' nonconsecutive '3'
      bins b5 = (5 [* 3]); // '3' consecutive 5's
      bins b6 = (1 => 3 [-> 4:6] => 1); // '1' followed by
                                        // '4' to '6' goto nonconsecutive '3'
                                        // followed immediately by a '1'
      bins b7 = (1 => 2 [= 3:6] => 5); // '1' followed by
                                       // '3' to '6' nonconsecutive '2'
                                       // followed sometime later by a '5'
    }
  endgroup

endmodule
