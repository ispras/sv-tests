// IEEE Std 1800-2012
//   29. User-defined primitives
//    29.7 Sequential UDP initialization

// ! TYPE: POSITIVE

primitive srff(q, s, r);
  output q; reg q;
  input s, r;
  initial q = 1'b1;
  table
    // 's' 'r' 'q' 'q+'
    1 0 : ? : 1 ;
    f 0 : 1 : - ;
    0 r : ? : 0 ;
    0 f : 0 : - ;
    1 1 : ? : 0 ;
  endtable
endprimitive

module top(input in1, in2, output out);
  srff ff(out, in1, in2);
endmodule
