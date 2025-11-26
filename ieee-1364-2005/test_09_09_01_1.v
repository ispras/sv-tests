// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.9 Structured procedures
//       9.9.1 Initial construct
//         The following example illustrates use of the initial construct for initialization of
//         variables at the start of simulation.

// ! TYPE: POSITIVE

module test;

  parameter size = 10;
  reg areg;
  reg memory[size : 0];
  integer index;

  initial begin
    index = 0;
    areg = 0; // initialize a reg
    for (index = 0; index < size; index = index + 1)
      memory[index] = 0; //initialize memory word
  end
endmodule
