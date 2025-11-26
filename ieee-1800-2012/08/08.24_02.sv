// IEEE Std 1800-2012
//   8. Classes
//    8.24 Out-of-block declarations

// ! TYPE: NEGATIVE

module top;

  typedef int T;

  class C;
    extern function void f(T x);
    typedef real T;
  endclass

  function void C::f(T x);
  endfunction

endmodule
