// IEEE Std 1800-2012
//   8. Classes
//    8.24 Out-of-block declarations

// ! TYPE: POSITIVE

module top;

  typedef real T;

  class C;
    typedef int T;
    extern function T f();
    extern function real f2();
  endclass

  function C::T C::f(); // the return must use the scope resolution
                        // since the type is defined within the class
    return 1;
  endfunction

  function real C::f2();
    return 1.0;
  endfunction

endmodule
