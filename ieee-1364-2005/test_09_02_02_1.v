// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         The nonblocking procedural assignments shall be evaluated in two steps as discussed
//         in Clause 11. These two steps are shown in the following example.
//
//         Step 1.
//         At posedge c, the simulator evaluates the right-hand sides of the nonblocking assignments
//         and schedules the assignments of the new values at the end of the
//         nonblocking assign update events.
//
//         Step2.
//         When the simulator activates the nonblocking assign update events, the simulator updates
//         the left-hand side of each nonblocking assignment statement.

// ! TYPE: POSITIVE

module evaluates2(out);

  output out;
  reg a, b, c;

  initial begin
    a = 0;
    b = 1;
    c = 0;
  end

  always  c = #5 ~c;

  always @(posedge c) begin
    a <= b; // evaluates, schedules,
    b <= a; // and executes in two steps
  end
endmodule
