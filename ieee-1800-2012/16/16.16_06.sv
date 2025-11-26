// IEEE Std 1800-2012
//   16. Assertions
//    16.16 Clock resolution

// ! TYPE: VARYING

module top(input logic a, b, c, clk);
property q1;
  $rose(a) |-> ##[1:5] b;
endproperty

property q2;
  @(posedge clk) q1;
endproperty

default clocking posedge_clk @(posedge clk);
  property q3;
    $fell(c) |=> q1;
    // legal: 'q1' has no clocking event
  endproperty

  property q4;
    $fell(c) |=> q2;
    // legal: 'q2' has clocking event identical to that of
    // the clocking block
  endproperty

`ifdef NEGATIVE_TEST
  sequence s1;
    @(posedge clk) b[*3];
    // illegal: explicit clocking event in clocking block
  endsequence
`endif
endclocking

property q5;
  @(negedge clk) b[*3] |=> !b;
endproperty

always @(negedge clk)
begin
  a1: assert property ($fell(c) |=> q1);
    // legal: contextually inferred leading clocking event,
    // '@(negedge clk)'
  a2: assert property (posedge_clk.q4);
    // legal: will be queued (pending) on 'negedge clk', then
    // (if matured) checked at next 'posedge clk' (see 16.14.6)
`ifdef NEGATIVE_TEST
  a3: assert property ($fell(c) |=> q2);
    // illegal: multiclocked property with contextually
    // inferred leading clocking event
`endif
  a4: assert property (q5);
    // legal: contextually inferred leading clocking event,
    // '@(negedge clk)'
end

property q6;
  q1 and q5;
endproperty

`ifdef NEGATIVE_TEST
a5: assert property (q6);
  // illegal: default leading clocking event, '@(posedge clk)',
  // but semantic leading clock is not unique
`endif

a6: assert property ($fell(c) |=> q6);
  // legal: default leading clocking event, '@(posedge clk)',
  // is the unique semantic leading clock

sequence s2;
  $rose(a) ##[1:5] b;
endsequence

c1: cover property (s2);
  // legal: default leading clocking event, '@(posedge clk)'
c2: cover property (@(negedge clk) s2);
  // legal: explicit leading clocking event, '@(negedge clk)'
endmodule
