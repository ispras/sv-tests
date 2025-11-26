// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.9 Probabilistic distribution functions
//       17.9.1 $random function
//         Example 2 — The following example shows how adding the concatenation operator to the
//         preceding example gives rand a positive value from 0 to 59.

// ! TYPE: VARYING

module test;
  reg [23:0] rnd;
  initial assign rnd = {$random} % 60;
endmodule
