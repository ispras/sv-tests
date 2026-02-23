// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.11 Composing sequences from simpler subsequences

// ! TYPE: POSITIVE

module top(input sysclk, reset, inst, ready, proc1, proc2, branch_back);

  sequence e1;
    @(posedge sysclk) $rose(ready) ##1 proc1 ##1 proc2 ;
  endsequence

  sequence rule;
    @(posedge sysclk) reset ##1 inst ##1 e1.triggered ##1 branch_back;
  endsequence

endmodule
