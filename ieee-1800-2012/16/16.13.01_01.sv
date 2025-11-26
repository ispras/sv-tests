// IEEE Std 1800-2012
//   16. Assertions
//    16.13 Multiclock support
//     16.13.1 Multiclocked sequences

// ! TYPE: POSITIVE

module top(input clk0, clk1, clk2, sig0, sig1);

  sequence s1;
    @(posedge clk0) sig0 ##1 @(posedge clk1) sig1;
  endsequence

  sequence s2;
    @(posedge clk0) sig0 ##1 sig1;
  endsequence

  sequence s3;
    @(posedge clk0) sig0 ##0 @(posedge clk1) sig1;
  endsequence

  sequence s4;
    @(posedge clk0) sig0 ##0 sig1;
  endsequence

  sequence s5;
    @(posedge clk0) sig0 && sig1;
  endsequence

  sequence s6;
    @(posedge clk1) s1 ##1 @(posedge clk2) s2;
  endsequence

  sequence s7;
    @(posedge clk0) sig0 ##1 @(posedge clk1) sig1[*0:1];
  endsequence

  sequence s8;
    @(posedge clk1) s1 ##2 @(posedge clk2) s2;
  endsequence

  sequence s9;
    @(posedge clk1) s1 intersect @(posedge clk2) s2;
  endsequence
endmodule
