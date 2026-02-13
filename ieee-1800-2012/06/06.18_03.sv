// IEEE Std 1800-2012
//   6. Data types
//    6.18 User-defined types

// ! TYPE: VARYING

module top;
  class C;
    typedef int T;
  endclass
  typedef C;
`ifdef NEGATIVE_TEST
  C::T x; // illegal; 'C' is an incomplete forward type
`endif
  typedef C::T c_t; // legal use after class completion
  c_t y;
endmodule
