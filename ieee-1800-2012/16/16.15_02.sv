// IEEE Std 1800-2012
//   16. Assertions
//    16.15 Disable iff resolution

// ! TYPE: POSITIVE

module m1;

  bit clk, rst1;

  default disable iff rst1;

  property p1;
    rst1 ##1 rst1;
  endproperty

  a1: assert property (@(posedge clk) p1); // property 'p1' is
                                           // defined elsewhere
  //...

  module m2;

    bit rst2;

    default disable iff rst2;

    property p2;
      rst2 ##2 rst2;
    endproperty
    // ...
    a2: assert property (@(posedge clk) p2); // property 'p2' is
                                             // defined elsewhere
  endmodule

endmodule
