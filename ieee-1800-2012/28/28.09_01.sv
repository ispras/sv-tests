// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.9 CMOS switches

// ! TYPE: POSITIVE

module top(input datain, ncontrol, pcontrol, output w);
  cmos(w, datain, ncontrol, pcontrol);
  // is equivalent to:
  nmos(w, datain, ncontrol);
  pmos(w, datain, pcontrol);
endmodule
