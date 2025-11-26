// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.11 Composing sequences from simpler subsequences

// ! TYPE: POSITIVE

module top(input sysclk, reset, inst, ready, proc1, proc2, branch_back);

sequence e2(a,b,c);
  @(posedge sysclk) $rose(a) ##1 b ##1 c;
endsequence

sequence e2_instantiated;
  e2(ready,proc1,proc2);
endsequence

sequence rule2a;
  @(posedge sysclk) reset ##1 inst ##1 e2_instantiated.triggered ##1
branch_back;
endsequence

endmodule
