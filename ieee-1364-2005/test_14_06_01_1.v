// IEEE Std 1364-2005
//   14. Specify blocks
//     14.6 Detailed control of pulse filtering behavior
//       14.6.1 Specify block control of pulse limit values
//         In the following example, the path (clk=>q) acquires a reject limit of 2 and an error
//         limit of 9, as defined by the first PATHPULSE$ declaration. The paths (clr*>q) and
//         (pre*>q) receive a reject limit of 0 and an error limit of 4, as specified by the second
//         PATHPULSE$ declaration. The path (data=>q) is not explicitly defined in any of the
//         PATHPULSE$ declarations; therefore, it acquires reject and error limit of 3, as defined
//         by the last PATHPULSE$ declaration.

// ! TYPE: POSITIVE

module test(clk, data, clr, pre, q);

  input clk, data, clr, pre;
  output q;

  specify
    (clk => q) = 12;
    (data => q) = 10;
    (clr, pre *> q) = 4;
    specparam
      PATHPULSE$clk$q = (2,9),
      PATHPULSE$clr$q = (0,4),
      PATHPULSE$ = 3;
  endspecify
endmodule
