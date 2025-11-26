// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences

// ! TYPE: POSITIVE

module top(clk);

input clk;
reg a, b, c, d, e, f, g, h, i, j, k, l;

sequence s1;
  @(posedge clk) a ##1 b ##1 c;
endsequence

sequence s2;
  @(posedge clk) d ##1 e ##1 f;
endsequence

sequence s3;
  @(negedge clk) g ##1 h ##1 i;
endsequence

sequence s4;
  @(/*edge*/ clk) j ##1 k ##1 l;
endsequence

endmodule
