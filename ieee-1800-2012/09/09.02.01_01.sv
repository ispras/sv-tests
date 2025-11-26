// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.1 Initial procedures

// ! TYPE: POSITIVE

module top;

  int a;
  int memory[8:0];
  int size = 8;

  initial begin
    a = 0; // initialize 'a'
    for (int index = 0; index < size; index++)
      memory[index] = 0; // initialize 'memory' word
  end

endmodule
