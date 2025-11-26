// IEEE Std 1364-2005
//   11. Scheduling semantics
//     11.5 Race conditions
//       11.4.1 Determinism
//         Because the execution of expression evaluation and net update events may be intermingled,
//         race conditions are possible. The simulator is correct in displaying either a 1 or a 0.
//         The assignment of 0 to q enables an update event for p. The simulator may either continue
//         and execute the $display task or execute the update for p, followed by the $display task.

// ! TYPE: POSITIVE

module test;

  reg q;
  wire p;

  assign p = q;

  initial begin
    q = 1;
    #1 q = 0;
    $display(p);
  end
endmodule
