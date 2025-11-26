// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.7 CMOS switches
//       The equivalence of the cmos gate to the pairing of an nmos gate and a pmos gate is shown
//       in the following example

// ! TYPE: POSITIVE

module test(datain, ncontrol, pcontrol, w);

  input datain, ncontrol, pcontrol;
  output w;
  cmos (w, datain, ncontrol, pcontrol);

  // is equvalent to
  nmos (w, datain, ncontrol);
  pmos (w, datain, pcontrol);

endmodule
