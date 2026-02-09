// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.5 Full connection and parallel connection paths

// ! TYPE: POSITIVE

module top(in1, in2, s, q);
  output [7:0] q;
  input [7:0] in1, in2;
  input s;
  // Functional description omitted ...
  specify
    (in1 => q) = (3, 4) ;
    (in2 => q) = (2, 3) ;
    (s *> q) = 1;
  endspecify
endmodule
