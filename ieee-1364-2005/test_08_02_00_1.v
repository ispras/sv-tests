// IEEE Std 1364-2005
//   8. User-defined primitives (UDPs)
//     8.2 Combinational UDPs
//       The following example defines a multiplexer with two data inputs and a control input.

// ! TYPE: POSITIVE

module test(control, dataA, dataB, mux);

  input control, dataA, dataB;
  output mux;
  multiplexer mult(mux, control, dataA, dataB);
endmodule

primitive multiplexer(mux, control, dataA, dataB);

  output mux;
  input control, dataA, dataB;

  table
    // control  dataA   dataB  mux
    0     1      0  :  1 ;
    0     1      1  :  1 ;
    0     1      x  :  1 ;
    0     0      0  :  0 ;
    0     0      1  :  0 ;
    0     0      x  :  0 ;
    1     0      1  :  1 ;
    1     1      1  :  1 ;
    1     x      1  :  1 ;
    1     0      0  :  0 ;
    1     1      0  :  0 ;
    1     x      0  :  0 ;
    x     0      0  :  0 ;
    x     1      1  :  1 ;
  endtable
endprimitive
