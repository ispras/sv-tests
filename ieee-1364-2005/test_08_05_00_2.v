// IEEE Std 1364-2005
//   8. User-defined primitives (UDPs)
//     8.5 Sequential UDP initialization
//       The following example show how values are applied in a module that
//       instantiates a sequential UDP with an initial statement.

// ! TYPE: POSITIVE

primitive dff1(q, clk, d);

  input clk, d;
  output q;
  reg q;

  initial q = 1'b1;

  table
  // clk    d     q     q+
      r     0  :  ?  :  0  ;
      r     1  :  ?  :  1  ;
      f     ?  :  ?  :  -  ;
      ?     *  :  ?  :  -  ;
  endtable
endprimitive

module dff(q, qb, clk, d);

  input clk, d;
  output q, qb;

  dff1 g1(qi, clk, d);
  buf #3 g2(q, qi);
  not #5 g3(qb, qi);
endmodule
