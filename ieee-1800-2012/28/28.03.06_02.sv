// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.3 Gate and switch declaration syntax
//     28.3.6 Primitive instance connection list

// ! TYPE: POSITIVE

module driver(in, out, en);
  input [3:0] in;
  output [3:0] out;
  input en;

  bufif0 ar[3:0](out, in, en); // array of three-state buffers
endmodule

module driver_equiv(in, out, en);
  input [3:0] in;
  output [3:0] out;
  input en;

  bufif0 ar3(out[3], in[3], en); // each buffer declared separately
  bufif0 ar2(out[2], in[2], en);
  bufif0 ar1(out[1], in[1], en);
  bufif0 ar0(out[0], in[0], en);
endmodule

module top(input [3:0] in1, input in2, output [3:0] out1);
  driver d1(in1, out1, in2);
  driver_equiv d2(in1, out1, in2);
endmodule
