// IEEE Std 1364-2005
//   14. Specify blocks
//     14.6 Detailed control of pulse filtering behavior
//       14.6.4 Detailed pulse control capabilities
//         14.6.4.2 Negative pulse detection
//           Because no pulse style or showcancelled declarations appear within the specify block,
//           the compiler applies the default modes of on-event and noshowcancelled.

// ! TYPE: POSITIVE

module test(a, b, out);

  input a, b;
  output out;

  specify
    (a => out) = (2,3);
    (b => out) = (3,4);
  endspecify
endmodule
