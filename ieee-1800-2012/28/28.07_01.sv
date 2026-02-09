// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.7 MOS switches

// ! TYPE: POSITIVE

module top(input data, control, output out);
  pmos p1(out, data, control);
  nmos n2(out, data, control);
  rnmos rn3(out, data, control);
  rpmos rp4(out, data, control);
endmodule
