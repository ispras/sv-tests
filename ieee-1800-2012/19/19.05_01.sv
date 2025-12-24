// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points

// ! TYPE: VARYING

module top;

  covergroup cg (ref int x , ref int y, input int c);
    coverpoint x; // creates coverpoint 'x' covering the formal 'x'
`ifdef NEGATIVE_TEST
    x: coverpoint y; // INVALID: coverpoint label 'x' already exists
`endif
    b: coverpoint y; // creates coverpoint 'b' covering the formal 'y'

    cx: coverpoint x; // creates coverpoint 'cx' covering the formal 'x'

    option.weight = c; // set weight of 'cg' to value of formal 'c'
    bit [7:0] d: coverpoint y[31:24]; // creates coverpoint 'd' covering the
                                      // high order 8 bits of the formal 'y'
    e: coverpoint x {
      option.weight = 2; // set the weight of coverpoint 'e'
    }
`ifdef NEGATIVE_TEST
    e.option.weight = 2; // INVALID use of 'e', also syntax error
`endif

    cross x, y { // Creates implicit coverpoint 'y' covering
                 // the formal 'y'. Then creates a cross of
                 // coverpoints 'x', 'y'
      option.weight = c; // set weight of cross to value of formal 'c'
    }
`ifdef NEGATIVE_TEST
    b: cross y, x; // INVALID: coverpoint label 'b' already exists
`endif
  endgroup

endmodule
