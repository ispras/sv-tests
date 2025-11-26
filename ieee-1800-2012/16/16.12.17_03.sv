// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.17 Recursive properties

// ! TYPE: POSITIVE

module top;

property fibonacci1 (local input int a, b, n, int fib_sig);
  (n > 0)
  |->
  (
    (fib_sig == a)
    and
    (1'b1 |=> fibonacci1(b, a + b, n - 1, fib_sig))
  );
endproperty

// illegal
`ifdef NEGATIVE_TEST
property fibonacci2 (int a, b, n, fib_sig);
  (n > 0)
  |->
  (
    (fib_sig == a)
    and
    (1'b1 |=> fibonacci2(b, a + b, n - 1, fib_sig))
  );
endproperty
`endif

endmodule
