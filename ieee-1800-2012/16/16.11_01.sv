// IEEE Std 1800-2012
//   16. Assertions
//    16.11 Calling subroutines on match of a sequence

// ! TYPE: POSITIVE

module top;

  reg a, b, e, f;

  sequence s1;
    logic v, w;
    (a, v = e) ##1
    (b[->1], w = f, $display("b after a with v = %h, w = %h\n", v, w));
  endsequence

endmodule
