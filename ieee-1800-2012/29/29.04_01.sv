// IEEE Std 1800-2012
//   29. User-defined primitives
//    29.4 Combinational UDPs

// ! TYPE: POSITIVE

primitive multiplexer(mux, control, dataA, dataB);
  output mux;
  input control, dataA, dataB;

  table
    // 'control' 'dataA' 'dataB' 'mux'
    0 1 0 : 1 ;
    0 1 1 : 1 ;
    0 1 x : 1 ;
    0 0 0 : 0 ;
    0 0 1 : 0 ;
    0 0 x : 0 ;
    1 0 1 : 1 ;
    1 1 1 : 1 ;
    1 x 1 : 1 ;
    1 0 0 : 0 ;
    1 1 0 : 0 ;
    1 x 0 : 0 ;
    x 0 0 : 0 ;
    x 1 1 : 1 ;
  endtable
endprimitive

module top(input in1, in2, in3, output out);
  multiplexer m(out, in1, in2, in3);
endmodule
