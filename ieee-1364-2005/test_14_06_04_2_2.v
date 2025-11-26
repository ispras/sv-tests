// IEEE Std 1364-2005
//   14. Specify blocks
//     14.6 Detailed control of pulse filtering behavior
//       14.6.4 Detailed pulse control capabilities
//         14.6.4.2 Negative pulse detection
//           This showcancelled declaration is in error because it follows use of out in a module
//           path declaration. It would be contradictory for out to have noshowcancelled behavior
//           from input a, but showcancelled behavior from input b.

// ! TYPE: VARYING

module test(input a, b, output out);

  specify
    (a => out) = (2,3);

`ifdef NEGATIVE_TEST
    showcancelled out;
    (b => out) = (3,4);
`endif
  endspecify
endmodule
