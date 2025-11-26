// IEEE Std 1364-2005
//   5. Expressions
//    5.3 Minimum, typical, and maximum delay expressions
//      The next example shows a typical expression that is used to specify min:typ:max format
//        values

// ! TYPE: POSITIVE

module test;

  parameter val = (32'd 50: 32'd 75: 32'd 100);

endmodule
