// IEEE Std 1800-2012
//   29. User-defined primitives
//    29.7 Sequential UDP initialization

// ! TYPE: POSITIVE

primitive dff1(q, clk, d);
  input clk, d;
  output q; reg q;
  initial q = 1'b1;
  table
    // clk d q q+
    r 0 : ? : 0 ;
    r 1 : ? : 1 ;
    f ? : ? : - ;
    ? * : ? : - ;
  endtable
endprimitive

module dff(q, qb, clk, d);
  input clk, d;
  output q, qb;
  dff1 g1 (qi, clk, d);
  buf #3 g2 (q, qi);
  not #5 g3 (qb, qi);
endmodule

module top(input in1, in2, output out1, out2);
  dff ff(out1, out2, in1, in2);
endmodule
