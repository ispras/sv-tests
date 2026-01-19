// IEEE Std 1800-2012
//   24. Programs
//    24.5 Blocking tasks in cycle/event mode

// ! TYPE: POSITIVE

module top;

  reg a, b;

  task T;
    S1: a = b; // executes in reactive region set if called from a program
    #5;
    S2: b <= 1'b1; // executes in reactive region set if called from a program
  endtask

endmodule
