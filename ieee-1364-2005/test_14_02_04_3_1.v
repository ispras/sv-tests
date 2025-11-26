// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.3 Edge-sensitive state-dependent paths
//           Example 1. In this example, if the positive edge of clock occurs when reset and clear
//           are low, a module path extends from clock  to out using a rise delay of 10 and a fall
//           delay of 8.

// ! TYPE: POSITIVE

module test(clock, reset, clear, in, out);

  input clock, reset, clear, in;
  output out;

  specify
    if (!reset && !clear)
      (posedge clock => ( out +: in )) = (10, 8);
  endspecify
endmodule
