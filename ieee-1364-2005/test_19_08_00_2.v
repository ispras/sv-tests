// IEEE Std 1364-2005
//   19. Compiler directives
//     19.8 `timescale
//       The time values in the modules that follow this directive are multiples of 10 us because
//       the time_unit argument is “10  us.” Delays are rounded to within one tenth of a
//       microsecond because the time_precision argument is “100 ns,” or one tenth of a microsecond.

// ! TYPE: POSITIVE

`timescale 10 us / 100 ns

module test;
  initial begin
  end
endmodule
