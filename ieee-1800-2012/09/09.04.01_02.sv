// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.1 Delay control

// ! TYPE: POSITIVE

module top;

  parameter d = 50;
  parameter e = 40;
  reg rega, regb, regr;

  initial begin
    #d rega = regb; // 'd' is defined as a parameter
    #((d + e) / 2) rega = regb; // delay is average of 'd' and 'e'
    #regr regr = regr + 1; // delay is the value in 'regr'
  end

endmodule
