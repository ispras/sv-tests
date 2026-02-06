// IEEE Std 1800-2012
//   29. User-defined primitives
//    29.6 Edge-sensitive sequential UDPs

// ! TYPE: POSITIVE

primitive d_edge_ff(q, clock, data);
  output q; reg q;
  input clock, data;

  table
    // 'clock' 'data' 'q' 'q+'
    // obtain output on rising edge of 'clock'
    (01) 0 : ? : 0 ;
    (01) 1 : ? : 1 ;
    (0?) 1 : 1 : 1 ;
    (0?) 0 : 0 : 0 ;
    // ignore negative edge of 'clock'
    (?0) ? : ? : - ;
    // ignore 'data' changes on steady 'clock'
    ? (??) : ? : - ;
  endtable
endprimitive

module top(input in1, in2, output out);
  d_edge_ff ff(out, in1, in2);
endmodule
