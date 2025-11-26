// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.1 Gate and switch declaration syntax
//       7.1.6 Primitive instance connection list
//         The two module descriptions that follow are equivalent except for indexed instance names,
//         and they demonstrate how different instances within an array of instances are connected
//         when the port sizes do not match

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
  driver busar[3:0](.out({bushigh, buslow}), .in(busin), .en({enh, enh, enl, enl}));
endmodule
