// IEEE Std 1800-2012
//   29. User-defined primitives
//    29.5 Level-sensitive sequential UDPs

// ! TYPE: POSITIVE

primitive latch(q, ena_, data);
  output q; reg q;
  input ena_, data;

  table
    // 'ena_' 'data' : 'q' : 'q+'
    0 1 : ? : 1 ;
    0 0 : ? : 0 ;
    1 ? : ? : - ; // '-' = no change
  endtable
endprimitive

module top(input in1, in2, output out);
  latch l(out, in1, in2);
endmodule
