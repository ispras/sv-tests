// IEEE Std 1364-2005
//   19. Compiler directives
//     19.8 `timescale
//       Here, all time values in the modules that follow the directive are multiples of 1 ns
//       because the time_unit argument is “1 ns.” Delays are rounded to real numbers with three
//       decimal places—or precise to within one thousandth of a nanosecond—because the
//       time_precision argument is “1 ps,” or one thousandth of a nanosecond.

// ! TYPE: POSITIVE

`timescale 1 ns / 1 ps

module test;
  initial begin
  end
endmodule
