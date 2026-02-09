// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.3 Edge-sensitive paths

// ! TYPE: POSITIVE

module top(input in, clock, output out);
  specify
    (posedge clock => (out +: in)) = (10, 8);
  endspecify
endmodule
