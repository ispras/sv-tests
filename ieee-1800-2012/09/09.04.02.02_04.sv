// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.2 Implicit event_expression list

// ! TYPE: POSITIVE

module top;

  reg a, b, c, d, x;

  always @* begin // equivalent to '@(a or b or c or d)'
    x = a ^ b;
    @* // equivalent to '@(c or d)'
      x = c ^ d;
  end

endmodule
