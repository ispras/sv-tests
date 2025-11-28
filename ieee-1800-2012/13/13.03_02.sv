// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.3 Tasks

// ! TYPE: POSITIVE

module top(input logic v, w, output logic x, output logic y, z);

  task my_task;
    input a, b;
    inout c;
    output d, e;
    // . . . // statements that perform the work of the task
    // . . .
    c = a; // the assignments that initialize result outputs
    d = b;
    e = c;
  endtask

  // Or using the second form of a task declaration, the task could be defined as follows:
  task my_task_eq(input a, b, inout c, output d, e);
    c = a;
    d = b;
    e = c;
  endtask

  initial my_task(v, w, x, y, z);

endmodule
