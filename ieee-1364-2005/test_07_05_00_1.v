// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.5 MOS switches
//       The following example declares a pmos switch. The output is out, the data input is data,
//       and the control input is control. The instance name is p1.

// ! TYPE: POSITIVE

module test(data, control, out);

  input data, control;
  output out;
  pmos p1(out, data, control);
endmodule
