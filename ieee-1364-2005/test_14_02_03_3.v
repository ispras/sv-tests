// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.3 Edge-sensitive paths
//         The following example demonstrates an edge-sensitive path declaration with no edge
//         identifier. In this example, at any change in clock, a module path extends from clock
//         to out.

// ! TYPE: POSITIVE

module test(clock, in, out);

  inout clock, in, out;

  specify
    (clock => ( out : in )) = (10, 8);
  endspecify
endmodule
