// IEEE Std 1800-2012
//   30. Specify blocks
//    30.5 Assigning delays to module paths
//     30.5.3 Delay selection

// ! TYPE: POSITIVE

module top #(parameter MODE = 1) (input A, output Y);
  wire mode_lt_5 = (MODE < 5);
  wire mode_lt_4 = (MODE < 4);
  wire mode_lt_3 = (MODE < 3);
  wire mode_lt_2 = (MODE < 2);
  wire mode_lt_1 = (MODE < 1);
  specify
    if (mode_lt_5) (A => Y) = (5, 9);
    if (mode_lt_4) (A => Y) = (4, 8);
    if (mode_lt_3) (A => Y) = (6, 5);
    if (mode_lt_2) (A => Y) = (3, 2);
    if (mode_lt_1) (A => Y) = (7, 7);
  endspecify
endmodule
