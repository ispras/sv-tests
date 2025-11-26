// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//         The following example shows a race condition that could be prevented by using
//         intra-assignment timing control. The code in this example samples and sets the values
//         of both a and b at the same simulation time, thereby creating a race condition.

// ! TYPE: POSITIVE

module test;

  reg a, b;

  initial begin
    fork
      #5 a = b;
      #5 b = a;
    join
  end
endmodule
