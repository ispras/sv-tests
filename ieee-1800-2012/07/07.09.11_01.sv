// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.11 Associative array literals

// ! TYPE: POSITIVE

module top;

  // an associative array of strings indexed by 2-state integers,
  // default is "hello".
  string words [int] = '{default: "hello"};

  // an associative array of 4-state integers indexed by strings, default is –1
  integer tab [string] = '{"Peter":20, "Paul":22, "Mary":23, default:-1 };

endmodule
