// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.16 Gate and net delays

// ! TYPE: POSITIVE

module top(input in1, in2, ctrl, output out);
  and #(10) a1(out, in1, in2); // only one delay
  and #(10,12) a2(out, in1, in2); // rise and fall delays
  bufif0 #(10,12,11) b3(out, in, ctrl); // rise, fall, and turn-off delays
endmodule
