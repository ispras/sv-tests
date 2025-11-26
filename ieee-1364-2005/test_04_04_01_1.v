// IEEE Std 1364-2005
//   4. Data types
//    4.4 Strengths
//      4.4.1 Charge strength

// ! TYPE: POSITIVE

module test;
  trireg a;                        // trireg net of charge strength medium
  trireg (large) #(0,0,50) cap1;   // trireg net of charge strength large
                                   // with charge decay time 50 time units
  trireg (small)signed [3:0] cap2; // signed 4-bit trireg vector
endmodule
