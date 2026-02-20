// IEEE Std 1800-2012
//   6. Data types
//    6.8 Variable declarations

// ! TYPE: POSITIVE

module top(data_in);
  shortint s1, s2[0:9];

  var byte my_byte; // equivalent to 'byte my_byte;'
  var v; // equivalent to 'var logic v;'
  var [15:0] vw; // equivalent to 'var logic [15:0] vw;'
  var enum bit {clear, error} status;
  input var logic data_in;
  var reg r;

  int i = 0;
endmodule
