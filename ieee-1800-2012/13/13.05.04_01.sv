// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.5 Subroutine calls and argument passing
//     13.5.4 Argument binding by name

// ! TYPE: VARYING

module top;

  function int fun(int j = 1, string s = "no");
  endfunction

  initial begin
    fun(.j(2), .s("yes")); // 'fun(2, "yes");'
    fun(.s("yes")); // 'fun(1, "yes");'
    fun(, "yes"); // 'fun(1, "yes");'
    fun(.j(2)); // 'fun(2, "no");'
    fun(.s("yes"), .j(2)); // 'fun(2, "yes");'
    fun(.s(), .j()); // 'fun(1, "no");'
    fun(2); // 'fun(2 , "no");'
    fun(); // 'fun(1, "no");'
`ifdef NEGATIVE_TEST
    fun( .s("yes"), 2 ); // illegal
`endif
  end

endmodule
