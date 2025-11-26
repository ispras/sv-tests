// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.1 Delay control
//         The following example delays the execution of the assignment by 10 time units.

// ! TYPE: POSITIVE

module test;
  reg rega, regb;

  initial begin
    #10 rega = regb;
  end
endmodule
