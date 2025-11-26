// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.14 7.14 Gate and net delays
//       The following is an example of a delay specification with one, two, and three delays

// ! TYPE: POSITIVE

module test(in1, in2, in, ctrl, out);

  input in1, in2, in, ctrl;
  output out;

  and #(10) a1(out, in1, in2);          // only one delay
  and #(10,12) a2(out, in1, in2);       // rise and fall delays
  bufif0 #(10,12,11) b3(out, in, ctrl); // rise, fall, and turn-off delays
endmodule
