// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.6 bufif1, bufif0, notif1, and notif0 gates

// ! TYPE: POSITIVE

module top(input inw, controlw, output outw);
  bufif1 bf1(outw, inw, controlw);
  bufif0 bf2(outw, inw, controlw);
  notif1 nf3(outw, inw, controlw);
  notif0 nf4(outw, inw, controlw);
endmodule
