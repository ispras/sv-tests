// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.2 The nonblocking procedural assignment
//         The simulator evaluates and schedules assignments for the end of the current time step
//         and can perform swapping operations with the nonblocking procedural assignments.

// ! TYPE: POSITIVE

module non_block1;

  reg a, b, c, d, e, f;

  // blocking assignments
  initial begin
    a = #10 1; // a will be assigned 1 at time 10
    b = #2 0;  // b will be assigned 0 at time 12
    c = #4 1;  // c will be assigned 1 at time 16
  end

  // non-blocking assignments
  initial begin
    d <= #10 1; // d will be assigned 1 at time 10
    e <= #2 0;  // e will be assigned 0 at time 2
    f <= #4 1;  // f will be assigned 1 at time 4
  end
endmodule
