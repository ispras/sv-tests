// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.11 Composing sequences from simpler subsequences

// ! TYPE: POSITIVE

module top(sysclk);

  input sysclk;
  reg a, b, c;
  reg trans, start_trans, end_trans;

  sequence s;
    a ##1 b ##1 c;
  endsequence

  sequence rule;
    @(posedge sysclk)
    trans ##1 start_trans ##1 s ##1 end_trans;
  endsequence

endmodule
