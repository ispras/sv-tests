// IEEE Std 1800-2012
//   6. Data types
//    6.6 Net types
//     6.6.8 Generic interconnect

// ! TYPE: POSITIVE

module driver #(parameter int delay = 30,
                          int iterations = 256)
               (output wire logic [0:1] out);
  timeunit 1ns / 1ps;
  logic [0:1] outvar;

  assign out = outvar;

  initial begin
    outvar = '0;
    for (int i = 0; i < iterations; i++)
      #delay outvar++;
  end
endmodule : driver
