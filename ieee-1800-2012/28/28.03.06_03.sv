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

module busdriver(busin, bushigh, buslow, enh, enl);
  input [15:0] busin;
  output [7:0] bushigh, buslow;
  input enh, enl;

  driver busar3(busin[15:12], bushigh[7:4], enh);
  driver busar2(busin[11:8], bushigh[3:0], enh);
  driver busar1(busin[7:4], buslow[7:4], enl);
  driver busar0(busin[3:0], buslow[3:0], enl);
endmodule

module busdriver_equiv(busin, bushigh, buslow, enh, enl);
  input [15:0] busin;
  output [7:0] bushigh, buslow;
  input enh, enl;
  driver busar[3:0](.out({bushigh, buslow}), .in(busin),
                    .en({enh, enh, enl, enl}));
endmodule

module top(input [15:0] in1, input in2, in3, output [7:0] out1, out2);
  busdriver b1(in1, out1, out2, in2, in3);
  busdriver_equiv b2(in1, out1, out2, in2, in3);
endmodule
