// IEEE Std 1800-2012
//   6. Data types
//    6.3 Value set
//     6.3.2 Strengths
//      6.3.2.1 Charge strength

// ! TYPE: POSITIVE

module top;
  trireg a; // 'trireg' net of charge strength medium
  trireg (large) #(0, 0, 50) cap1; // 'trireg' net of charge strength 'large'
                                   // with charge decay time 50 time units
  trireg (small) signed [3:0] cap2; // signed 4-bit 'trireg' vector of
                                    // charge strength 'small'

endmodule
