// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.4 bufif1, bufif0, notif1, and notif0 gates
//       The following example declares an instance of bufif1. The output is outw, the input is inw,
//       and the control is controlw. The instance name is bf1.

// ! TYPE: POSITIVE

module test(inw, controlw, outw);

  input inw, controlw;
  output outw;
  bufif1 bf1(outw, inw, controlw);
endmodule
