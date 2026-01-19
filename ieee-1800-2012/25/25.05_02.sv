// IEEE Std 1800-2012
//   25. Interfaces
//    25.5 Modports

// ! TYPE: POSITIVE

interface i2;
  wire a, b, c, d;
  modport master(input a, b, output c, d);
  modport slave(output a, b, input c, d);
endinterface

module m(i2 i);
  // ...
endmodule

module s(i2 i);
  // ...
endmodule

module top;

  i2 i();

  m u1(.i(i.master));
  s u2(.i(i.slave));

endmodule
