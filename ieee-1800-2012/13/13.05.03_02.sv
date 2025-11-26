// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.5 Subroutine calls and argument passing
//     13.5.3 Default argument values

// ! TYPE: VARYING

module m;
  logic a, w;
  task t1 (output o = a); // default binds to 'm.a'
  endtask: t1

`ifdef NEGATIVE_TEST
  task t2 (output o = b); // illegal, 'b' cannot be resolved
  endtask: t2
`endif

  task t3 (inout io = w); // default binds to 'm.w'
  endtask: t3
endmodule: m

module top;

  logic a;
  initial begin
    m.t1(); // same as 'm.t1(m.a)', not 'm.t1(n.a)';
            // at end of task, value of 't1.o' is copied to 'm.a'
    m.t3(); // same as 'm.t3(m.w)'
            // value of 'm.w' is copied to 't3.io' at start of task and
            // value of 't3.io' is copied to 'm.w' at end of task
  end

endmodule
