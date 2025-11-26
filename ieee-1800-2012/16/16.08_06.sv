// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences

// ! TYPE: VARYING

module top(sysclk);

input sysclk;
reg x, y;

`ifdef NEGATIVE_TEST
sequence s1;
  @(posedge sysclk) (x ##1 s2);
endsequence

sequence s2;
  @(posedge sysclk) (y ##1 s1);
endsequence
`endif

endmodule
