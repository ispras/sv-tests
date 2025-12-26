// IEEE Std 1800-2012
//   16. Assertions
//    16.13 Multiclock support
//     16.13.6 Sequence methods

// ! TYPE: POSITIVE

module top(input logic sysclk, clk, reset, inst, a, b, c,
           reset1, branch_back, branch_back1);

  sequence e1;
    @(posedge sysclk) $rose(a) ##1 b ##1 c;
  endsequence

  sequence e2;
    @(posedge sysclk) reset ##1 inst ##1 e1.triggered ##1 branch_back;
  endsequence

  sequence e3;
    @(posedge clk) reset1 ##1 e1.matched ##1 branch_back1;
  endsequence

  sequence e2_with_arg(sequence subseq);
    @(posedge sysclk) reset ##1 inst ##1 subseq.triggered ##1 branch_back;
  endsequence

  sequence e4;
    e2_with_arg(@(posedge sysclk) $rose(a) ##1 b ##1 c);
  endsequence

  program check;
    initial begin
      wait (e1.triggered || e2.triggered);
      if (e1.triggered)
        $display("e1 passed");
      if (e2.triggered)
        $display("e2 passed");
      L2: assert property (@(posedge clk) a != b);
    end
  endprogram
endmodule
