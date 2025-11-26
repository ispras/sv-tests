// IEEE Std 1364-2005
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       14.3.3 Delay selection
//         Example 1. For a Y transition from 0 to 1, if A transitioned more recently than B, a
//         delay of 6 will be chosen. But if B transitioned more recently than A, a delay of 5 will
//         be chosen. And if, the last time they transitioned, A and B did so simultaneously, then
//         the smallest of the two rise delays would be chosen, which is the rise delay from B of 5.
//         The fall delay from A of 9 would be chosen if Y was instead to transition from 1 to 0.

// ! TYPE: POSITIVE

module test( A, B, Y);

  input A, B;
  output Y;

  specify
    (A => Y) = (6, 9);
    (B => Y) = (5, 11);
  endspecify
endmodule
