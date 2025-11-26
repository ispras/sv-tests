// IEEE Std 1800-2012
//   16. Assertions
//    16.13 Multiclock support
//     16.13.2 Multiclocked properties

// ! TYPE: POSITIVE

module top(input clk0, clk1, clk2, sig0, sig1, b);

  sequence s1;
    @(posedge clk0) sig0 ##1 @(posedge clk1) sig1;
  endsequence

  sequence s2;
    (@(posedge clk0) sig0) and (@(posedge clk1) sig1);
   endsequence

  sequence s3;
    @(posedge clk0) sig0;
  endsequence

  sequence s4;
    @(posedge clk1) sig1;
  endsequence

  property p5;
    @(posedge clk0) s3 |=> @(posedge clk1) s2;
  endproperty

  property p6;
    @(posedge clk0) s3 |=> ((@(posedge clk1) s2) and (@(posedge clk2) s3));
  endproperty

  property p7;
    @(posedge clk0) s3 |-> @(posedge clk1) s2;
  endproperty

  property p8;
    @(posedge clk0) if (b) @(posedge clk1) s2 else @(posedge clk2) s3;
  endproperty
endmodule
