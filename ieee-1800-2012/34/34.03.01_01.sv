// IEEE Std 1800-2012
//   34. Protected envelopes
//    34.3 Processing protected envelopes
//     34.3.1 Encryption

// ! TYPE: POSITIVE

module top(a, b);
  input a;
  output b;

`pragma protect encoding=(enctype="raw")
`pragma protect runtime_license=(library="lic.so",feature="runSecret",entry="chk",match=42)
`pragma protect data_method="x-caesar", data_keyname="rot13", begin
  logic b;

  initial
    begin
      b = 0;
    end

  always
    begin
      #5 b = a;
    end
`pragma protect end

endmodule
