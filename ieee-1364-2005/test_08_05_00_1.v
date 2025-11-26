// IEEE Std 1364-2005
//   8. User-defined primitives (UDPs)
//     8.5 Sequential UDP initialization
//       The following example shows a sequential UDP that contains an initial statement.

// ! TYPE: POSITIVE

module test(s, r, q);

  input s, r;
  output q;

  srff srff_edge(q, s, r);
endmodule

primitive srff(q, s, r);

  output q;
  reg q;
  input s, r;

  initial q = 1'b1;

  table
  //  s  r   q   q+
      1  0 : ? : 1 ;
      f  0 : 1 : - ;
      0  r : ? : 0 ;
      0  f : 0 : - ;
      1  1 : ? : 0 ;
  endtable
endprimitive
