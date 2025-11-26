// IEEE Std 1800-2012
//   16. Assertions
//    16.10 Local variables

// ! TYPE: VARYING

module top;

reg a, b, c, e, f, g;

sequence s1;
  bit x, y;
  a ##1 (b[->1], x = e, y = x && f) ##1 c[*2];
endsequence

sequence s2;
  bit x, y;
  a ##1 (b[->1], x = e, y = x && f) ##1 (c[*2], x = x & g);
endsequence

`ifdef NEGATIVE_TEST
sequence s3;
  bit x;
  a ##1 (b[*0:1], x = e) ##1 c[*2]; // illegal
endsequence
`endif

sequence s4;
  bit x;
  (a ##1 b[*0:1], x = e) ##1 c[*2]; // legal
endsequence

endmodule
