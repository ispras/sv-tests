// IEEE Std 1800-2012
//   34. Protected envelopes
//    34.3 Processing protected envelopes
//     34.3.1 Encryption

// ! TYPE: POSITIVE

module top(a, b);
  input a;
  output b;

`pragma protect encoding=(enctype="raw")
`pragma protect data_method="x-caesar", data_keyname="rot13", begin_protected
`pragma protect encoding=(enctype="raw"), data_block
`centzn cebgrpg ehagvzr_yvprafr=(yvoenel="yvp.fb",srngher="ehaFrperg",ragel="pux",zngpu=42)
  ert o;

  vavgvny
    ortva
      o = 0;
    raq

  nyjnlf
    ortva
      #5 o = n;
    raq
`pragma protect end_protected
`pragma reset protect

endmodule

