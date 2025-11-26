// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.2 Implicit event_expression list

// ! TYPE: POSITIVE

module top;

  reg a, b, c, d, y, tmp1, tmp2;

  always @* begin // equivalent to '@(a or b or c or d or tmp1 or tmp2)'
    tmp1 = a & b;
    tmp2 = c & d;
    y = tmp1 | tmp2;
  end

endmodule
