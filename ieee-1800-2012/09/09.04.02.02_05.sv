// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.2 Implicit event_expression list

// ! TYPE: POSITIVE

module top;

  reg [7:0] y;
  reg a, en;

  always @* begin
    y = 8'hff;
    y[a] = !en;
  end

endmodule
