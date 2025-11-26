// IEEE Std 1800-2012
//   8. Classes
//    8.25 Parameterized classes

// ! TYPE: VARYING

module top;

  class C #(int p = 1);
    // ...
  endclass

  class D #(int p);
    // ...
  endclass

  C obj; // legal; equivalent to 'C#() obj';
`ifdef NEGATIVE_TEST
  D obj; // illegal; 'D' has no default specialization
`endif

endmodule
