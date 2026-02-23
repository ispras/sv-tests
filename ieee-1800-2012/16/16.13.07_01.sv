// IEEE Std 1800-2012
//   16. Assertions
//    16.13 Multiclock support
//     16.13.7 Local variable initialization assignments

// ! TYPE: POSITIVE

module top(clk, clk1, clk2);

  input clk, clk1, clk2;
  reg a, b, c, d, e, f;

  property p;
    logic v = e;
    (@(posedge clk1) (a == v)[*1:$] |-> b)
    and
    (@(posedge clk2) c[*1:$] |-> d == v)
    ;
  endproperty

  a1: assert property (@(posedge clk) f |=> p);

  property p1;
    logic v;
    (@(posedge clk1) (1, v = e) ##0 (a == v)[*1:$] |-> b)
    and
    (@(posedge clk2) (1, v = e) ##0 c[*1:$] |-> d == v)
    ;
  endproperty

endmodule
