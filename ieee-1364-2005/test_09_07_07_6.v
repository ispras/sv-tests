// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//          The intra-assignment form of timing control used in the next example prevents this
//          race condition.

// ! TYPE: POSITIVE

module test;

  reg a, b;

  initial begin
    fork
      a = #5 b; // data swap
      b = #5 a;
    join
  end
endmodule
