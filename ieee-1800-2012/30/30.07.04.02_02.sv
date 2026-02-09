// IEEE Std 1800-2012
//   30. Specify blocks
//    30.7 Detailed control of pulse filtering behavior
//     30.7.4 Detailed pulse control capabilities
//      30.7.4.2 Negative pulse detection

// ! TYPE: POSITIVE

module top(input a, b, output out);
  specify
    (a => out) = (2, 3);
    showcancelled out;
    (b => out) = (3, 4);
  endspecify
endmodule
