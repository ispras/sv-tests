// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.5 Subroutine calls and argument passing
//     13.5.2 Pass by reference

// ! TYPE: NEGATIVE

module top;

  task automatic incr(ref input int a); // incorrect: 'ref' cannot be qualified
  endtask

endmodule
