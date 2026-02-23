// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.20 Property examples

// ! TYPE: POSITIVE

module top(clk, clkev);

  input clk, clkev;
  reg a, b, c, d, e, f;

  property rule1;
    @(posedge clk) a |-> b ##1 c ##1 d;
  endproperty

  property rule2;
    @(clkev) disable iff (e) a |-> not(b ##1 c ##1 d);
  endproperty

  property rule3;
    @(posedge clk) a[*2] |-> ((##[1:3] c) or (d |=> e));
  endproperty

  property rule4;
    @(posedge clk) a[*2] |-> ((##[1:3] c) and (d |=> e));
  endproperty

  property rule5;
    @(posedge clk)
    a ##1 (b || c)[->1] |->
    (if (b)
      (##1 d |-> e)
    else // 'c'
      f) ;
  endproperty

  property rule6(x, y);
    ##1 x |-> y;
  endproperty

  property rule5a;
    @(posedge clk)
    a ##1 (b || c)[->1] |->
    (if (b)
      rule6(d, e)
    else // 'c'
      f) ;
  endproperty

endmodule
