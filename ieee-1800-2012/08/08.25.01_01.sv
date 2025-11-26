// IEEE Std 1800-2012
//   8. Classes
//    8.25 Parameterized classes
//     8.25.1 Class resolution operator for parameterized classes

// ! TYPE: VARYING

module top;

  class C #(int p = 1);
    parameter int q = 5; // local parameter
    static task t;
      int p;
      int x = C::p; // 'C::p' disambiguates 'p'
                    // 'C::p' is not 'p' in the default specialization
    endtask
  endclass

`ifdef NEGATIVE_TEST
  int x = C::p; // illegal; 'C::' is not permitted in this context
`endif
  int y = C#()::p; // legal; refers to parameter 'p' in the default
                   // specialization of 'C'
  typedef C T; // 'T' is a default specialization, not an alias to
               // the name 'C'
  int z = T::p; // legal; 'T::p' refers to 'p' in the default specialization
  int v = C#(3)::p; // legal; parameter 'p' in the specialization of 'C#(3)'
  int w = C#()::q; // legal; refers to the local parameter
  T obj = new();
  int u = obj.q; // legal; refers to the local parameter
`ifdef NEGATIVE_TEST
  bit arr[obj.q]; // illegal: local parameter is not a constant expression
`endif

endmodule
