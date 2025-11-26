// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.6 Declaring multiple module paths in a single statement

// ! TYPE: POSITIVE

module test(a, b, c, q1, q2);

  input a, b, c;
  output q1, q2;

  specify
    (a, b, c *> q1, q2) = 10;
    // is equivalent to the following six individual module path assignments:
    (a *> q1) = 10;
    (b *> q1) = 10;
    (c *> q1) = 10;
    (a *> q2) = 10;
    (b *> q2) = 10;
    (c *> q2) = 10;
  endspecify
endmodule
