// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.2 Tasks and task enabling
//       10.2.2 Task enabling and argument passing
//         The following example illustrates the basic structure of a task definition with
//         five arguments.

// ! TYPE: POSITIVE

module test;

  task my_task;
    input a, b;
    inout c;
    reg foo1, foo2, foo3;
    output d, e;
    begin
      // statements that perform the work of the task
      foo1 = 0;
      foo2 = 1;
      foo3 = 2;
      c = foo1;  // the assignments that initialize result regs
      d = foo2;
      e = foo3;
    end
  endtask
endmodule
