// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.16 Gate and net delays
//     28.16.2 trireg net charge decay
//      28.16.2.2 Delay specification for charge decay time

// ! TYPE: POSITIVE

module top;
  trireg (large) #(0, 0, 50) cap1;
endmodule