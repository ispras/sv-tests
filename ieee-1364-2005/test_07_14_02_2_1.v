// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.14.2.2 Delay specification for charge decay time
//       The following example shows a specification of the charge decay time in a trireg net
//       declaration

// ! TYPE: POSITIVE

module test;
  trireg ( large ) #(0,0,50) cap1;
endmodule
