// IEEE Std 1364-2005
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       14.3.3 Delay selection
//         Example 2. Anywhere from zero to five of these specify paths might be active depending
//         upon the value of MODE. For instance, when MODE is 2, the first three specify paths are
//         active. A rise transition would select a delay of 4 because that is the smallest rise
//         delay among the first three. A fall transition would select a delay of 5 because that is
//         the smallest fall delay among the first three.

// ! TYPE: VARYING

module test(A, MODE, Y);

  input A;
  output integer MODE = 0;
  output Y;

  specify
    if (MODE < 5) (A => Y) = (5, 9);
    if (MODE < 4) (A => Y) = (4, 8);
    if (MODE < 3) (A => Y) = (6, 5);
    if (MODE < 2) (A => Y) = (3, 2);
    if (MODE < 1) (A => Y) = (7, 7);
  endspecify
endmodule
