// IEEE Std 1800-2012
//   31. Timing checks
//    31.9 Negative timing checks
//     31.9.2 Conditions in negative timing checks

// ! TYPE: POSITIVE

module top(input CP, D, TI, TE, output reg notifier);
  reg dCP, dD, dTI, dTE;
  wire TE_cond_D, TE_cond_TI, DXTI_cond;
  assign TE_cond_D = (dTE !== 1'b1);
  assign TE_cond_TI = (dTE !== 1'b0);
  assign DXTI_cond = (dTI !== dD);
  specify
    $setuphold(posedge CP, D, -10, 20, notifier, , TE_cond_D, dCP, dD);
    $setuphold(posedge CP, TI, 20, -10, notifier, , TE_cond_TI, dCP, dTI);
    $setuphold(posedge CP, TE, -4, 8, notifier, , DXTI_cond, dCP, dTE);
  endspecify
endmodule
