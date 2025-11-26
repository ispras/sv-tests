// IEEE Std 1364-2005
//   14. Specify blocks
//     14.6 Detailed control of pulse filtering behavior
//       14.6.4 Detailed pulse control capabilities
//         14.6.4.2 Negative pulse detection
//           Both these specify blocks produce the same result. Outputs out and out_b are both
//           declared showcancelled and on-detect.

// ! TYPE: POSITIVE

module test(a, b, out, out_b);

  input a, b;
  output out, out_b;

// The equivalent block is the commented one:
//  specify
//    showcancelled out;
//    pulsestyle_ondetect out;
//    (a => out) = (2,3);
//    (b => out) = (4,5);
//    showcancelled out_b;
//    pulsestyle_ondetect out_b;
//    (a => out_b) = (3,4);
//    (b => out_b) = (5,6);
//  endspecify

  specify
    showcancelled out,out_b;
    pulsestyle_ondetect out,out_b;
    (a => out) = (2,3);
    (b => out) = (4,5);
    (a => out_b) = (3,4);
    (b => out_b) = (5,6);
  endspecify
endmodule
