// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.6 Declaring multiple module paths in a single statement

// ! TYPE: POSITIVE

module top(input a, b, c, output q1, q2);
  specify
    (a, b, c *> q1, q2) = 10;
    // is equivalent to:
    // (a *> q1) = 10;
    // (b *> q1) = 10;
    // (c *> q1) = 10;
    // (a *> q2) = 10
    // (b *> q2) = 10;
    // (c *> q2) = 10;
  endspecify
endmodule
