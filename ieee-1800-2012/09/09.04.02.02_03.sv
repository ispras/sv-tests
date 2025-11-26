// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.2 Implicit event_expression list

// ! TYPE: POSITIVE

module top;

  reg kid, b, i;

  always @* begin // equivalent to '@(b)'
    @(i) kid = b; // 'i' is not added to '@*'
  end

endmodule
