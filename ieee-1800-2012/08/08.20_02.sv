// IEEE Std 1800-2012
//   8. Classes
//    8.20 Virtual methods

// ! TYPE: VARYING

module top;

  typedef int T; // 'T' and 'int' are matching data types.

  class C;
    virtual function C some_method(int a); endfunction
  endclass

  class D extends C;
    virtual function D some_method(T a); endfunction
  endclass

  class E #(type Y = logic) extends C;
    virtual function D some_method(Y a); endfunction
  endclass

`ifdef NEGATIVE_TEST
  E #() v1; // Illegal: type parameter 'Y' resolves to 'logic', which is not
            // a matching type for argument 'a'
`endif
  E #(int) v2; // Legal: type parameter 'Y' resolves to 'int'

endmodule
