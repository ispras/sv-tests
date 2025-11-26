// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.2 Implicit event_expression list

// ! TYPE: POSITIVE

module top;

  reg a, b, c, d, f, y;

  function reg myfunction(input reg in);
    myfunction = in;
  endfunction

  always @(*) begin // equivalent to '@(a or b or c or d or f)'
    y = (a & b) | (c & d) | myfunction(f);
  end

endmodule
