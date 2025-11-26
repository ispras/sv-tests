// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.7 Identifiers
//      3.7.1 Escaped identifiers

// ! TYPE: POSITIVE

module test;
  reg \busa+index /* There should be space */;
  reg \-clock ;
  reg \***error-condition*** ;
  reg \net1/\net2 ;
  reg \{a,b} ;
  reg \a*(b+c) ;
endmodule
