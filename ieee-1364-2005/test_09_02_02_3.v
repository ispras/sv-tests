// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         Step 1.
//         The simulator evaluates the right-hand side of the nonblocking assignments and schedules
//         the assignments for the end of the current time step.
//         Step 2.
//         At the end of the current time step, the simulator updates the left-hand side of each
//         nonblocking assignment statement.

// ! TYPE: POSITIVE

module non_block1;

  reg a, b;

  initial begin
    a  = 0;
    b  = 1;
    a <= b; // evaluates, schedules, and
    b <= a; // executes in two steps
  end

  initial begin
    $monitor( $time, , "a = %b b = %b", a, b);
    #100 $finish;
  end
endmodule
