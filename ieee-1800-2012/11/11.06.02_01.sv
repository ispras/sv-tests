// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.6 Expression bit lengths
//     11.6.2 Example of expression bit-length problem

// ! TYPE: VARYING

module top;

  logic [15:0] a, b, answer_err, answer_pass; // 16-bit variables

  initial begin
`ifdef NEGATIVE_TEST
    answer_err = (a + b) >> 1; // will not work properly
`endif
    answer_pass = (a + b + 0) >> 1; // will work correctly
  end

endmodule
