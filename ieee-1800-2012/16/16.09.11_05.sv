// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.11 Composing sequences from simpler subsequences

// ! TYPE: POSITIVE

module top(input sysclk, reset, inst, ready, proc1, proc2, branch_back);

sequence e2(a,b,c);
  @(posedge sysclk) $rose(a) ##1 b ##1 c;
endsequence

sequence a;
  e2(ready,proc1,proc2);
endsequence

sequence e3(sequence a, untyped b);
  @(posedge sysclk) a.triggered ##1 b;
endsequence

sequence rule3;
  @(posedge sysclk) reset ##1 e3(ready ##1 proc1, proc2) ##1 branch_back;
endsequence

endmodule
