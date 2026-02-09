// IEEE Std 1800-2012
//   30. Specify blocks
//    30.7 Detailed control of pulse filtering behavior
//     30.7.4 Detailed pulse control capabilities
//      30.7.4.2 Negative pulse detection

// ! TYPE: POSITIVE

module top(input a, b, output out, out_b);
  specify
    showcancelled out, out_b;
    pulsestyle_ondetect out, out_b;
    (a => out) = (2, 3);
    (b => out) = (4, 5);
    (a => out_b) = (3, 4);
    (b => out_b) = (5, 6);
  endspecify
endmodule
