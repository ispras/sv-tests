// IEEE Std 1800-2012
//   25. Interfaces
//    25.5 Modports

// ! TYPE: VARYING

interface i;
  wire x, y;

  interface illegal_i;
    wire a, b, c, d;
`ifdef NEGATIVE_TEST
    // 'x', 'y' not declared by this interface
    modport master(input a, b, x, output c, d, y);
    modport slave(output a, b, x, input c, d, y);
`endif
  endinterface : illegal_i

endinterface : i

interface illegal_i;
`ifdef NEGATIVE_TEST
  // 'a', 'b', 'c', 'd' not declared by this interface
  modport master(input a, b, output c, d);
  modport slave(output a, b, input c, d);
`endif
endinterface : illegal_i

module top;

  i i1();
  illegal_i i2();

endmodule
