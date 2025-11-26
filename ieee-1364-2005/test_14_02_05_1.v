// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.5 Full connection and parallel connection paths
//         Example 2 — The following example shows module paths for a 2:1 multiplexor with two 8-bit
//         inputs and one 8-bit output. The module path from s to q uses a full connection (*>)
//         because it connects a scalar source—the 1-bit select line—to a vector destination—the
//         8-bit output bus. The module paths from both input lines in1 and in2 to q use a parallel
//         connection (=>) because they set up parallel connections between two 8-bit buses.

// ! TYPE: POSITIVE

module mux8 (in1, in2, s, q);

  output [7:0] q;
  input [7:0] in1, in2;
  input s;

  // Functional description omitted ...

  specify
    (in1 => q) = (3, 4);
    (in2 => q) = (2, 3);
    (s *> q) = 1;
  endspecify
endmodule
