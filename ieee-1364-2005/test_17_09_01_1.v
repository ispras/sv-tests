// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.9 Probabilistic distribution functions
//       17.9.1 $random function
//         Example 1 - The following code fragment shows an example of random number generation
//         between –59 and 59.

// ! TYPE: VARYING

module test;
  reg [23:0] rnd;
  initial assign rnd = $random % 60;
endmodule
