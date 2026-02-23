// IEEE Std 1800-2012
//   16. Assertions
//    16.13 Multiclock support
//     16.13.5 Detecting and using end point of a sequence in multiclock context

// ! TYPE: POSITIVE

module top(input clk, sysclk, branch_back, reset, inst, ready, proc1, proc2);

  sequence e1(a, b, c);
    @(posedge clk) $rose(a) ##1 b ##1 c ;
  endsequence

  sequence e2;
    @(posedge sysclk) reset ##1 inst ##1 e1(ready,proc1,proc2).matched [->1]
        ##1 branch_back;
  endsequence

endmodule
