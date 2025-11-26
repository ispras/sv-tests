// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.6 Bidirectional pass switches
//       The following example declares an instance of tranif1. The bidirectional terminals are
//       inout1 and inout2. The control input is control. The instance name is t1.

// ! TYPE: POSITIVE

module test(control, inout1, inout2);

  input control;
  inout inout1, inout2;
  tranif1 t1(inout1,inout2,control);
endmodule
