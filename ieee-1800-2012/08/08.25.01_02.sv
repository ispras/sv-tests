// IEEE Std 1800-2012
//   8. Classes
//    8.25 Parameterized classes
//     8.25.1 Class resolution operator for parameterized classes

// ! TYPE: POSITIVE

module top;

  class C #(int p = 1, type T = int);
    extern static function T f();
  endclass

  function C::T C::f();
    return p + C::p;
  endfunction

  initial $display("%0d %0d", C#()::f(),C#(5)::f()); // output is "2 10"

endmodule
