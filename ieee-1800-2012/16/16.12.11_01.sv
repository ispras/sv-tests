// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.11 Always property

// ! TYPE: VARYING

module top(clk, reset);

  input clk, reset;
  reg a, b, c;

  initial a1: assume property(@(posedge clk) reset[*5] #=# (always !reset));

  property p1;
    a ##1 b |=> (always c);
  endproperty

  property p2;
    always [2:5] a;
  endproperty

  property p3;
    s_always [2:5] a;
  endproperty

  property p4;
    always [2:$] a;
  endproperty

`ifdef NEGATIVE_TEST
  property p5;
    s_always [2:$] a; // Illegal
  endproperty
`endif

endmodule
