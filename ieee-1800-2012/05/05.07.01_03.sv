// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.7 Numbers
//     5.7.1 Integer literal constants

// ! TYPE: VARYING

module top;
`ifdef NEGATIVE_TEST
  reg [7:0] illegal_neg_inside = 8'd-6; // this is illegal syntax
`endif
  reg signed [7:0] neg_six = -8'd6; // this defines the two's complement of 6,
                                    // held in 8 bits—equivalent to -(8'd 6)
  reg signed [3:0] signed_hf = 4'shf; // this denotes the 4-bit number '1111',
                                      // to be interpreted as a 2's
                                      // complement number,  or '-1'. This
                                      // is equivalent to -4'h 1
  reg signed [3:0] neg_sd15 = -4'sd15; // this is equivalent to -(-4'd 1),
                                       // or '0001'
  reg signed [15:0] signed_bz = 16'sbz; // the same as 16'sbz
endmodule