// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences

// ! TYPE: POSITIVE

module top(sysclk);

input sysclk;
reg start_trans, end_trans, trans;
reg a, b, c;

sequence rule;
  @(posedge sysclk)
  trans ##1 start_trans ##1 (a ##1 b ##1 c) ##1 end_trans ;
endsequence

endmodule
