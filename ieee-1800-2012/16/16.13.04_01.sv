// IEEE Std 1800-2012
//   16. Assertions
//    16.13 Multiclock support
//     16.13.4 Examples

// ! TYPE: POSITIVE

module top(clk, clk1, clk2);

input clk, clk1, clk2;
reg a, b, c, d, e, f;

sequence s1;
  a ##1 b; // unclocked sequence
endsequence

sequence s2;
  c ##1 d; // unclocked sequence
endsequence

// a) Multiclock sequence
sequence mult_s;
  (@(posedge clk) a) ##1 (@(posedge clk1) s1) ##1 (@(posedge clk2) s2);
endsequence

// b) Property with a multiclock sequence
property mult_p1;
  (@(posedge clk) a) ##1 (@(posedge clk1) s1) ##1 (@(posedge clk2) s2);
endproperty

// c) Property with a named multiclock sequence
property mult_p2;
  mult_s;
endproperty

// d) Property with multiclock implication
property mult_p3;
  @(posedge clk) a ##1 (@(posedge clk1) s1) |=> (@(posedge clk2) s2);
endproperty

// e) Property with implication, where antecedent and consequent
// are named multiclocked sequences
property mult_p6;
  mult_s |=> mult_s;
endproperty

// f) Property using clock flow and overlapped implication
property mult_p7;
  @(posedge clk) a ##1 b |-> (c ##1 (@(posedge clk1) d));
endproperty

// g) Property using clock flow and if–else
property mult_p8;
  @(posedge clk) a ##1 b |->
  (if (c)
    (1 |=> (@(posedge clk1) d))
  else
    e ##1 (@(posedge clk2) f)) ;
endproperty

endmodule
