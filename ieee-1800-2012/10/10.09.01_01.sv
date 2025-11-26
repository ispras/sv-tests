// IEEE Std 1800-2012
//   10. Assignment statements
//    10.9 Assignment patterns
//     10.9.1 Array assignment patterns

// ! TYPE: POSITIVE

module top;

  parameter y = 1;

  bit unpackedbits [1:0] = '{1,1}; // no size warning required as 'bit' can be set to 1
  int unpackedints [1:0] = '{1'b1, 1'b1}; // no size warning required as 'int' can be set to 1'b1

  initial unpackedbits = '{2 {y}} ; // same as '{y, y}
  int n[1:2][1:3] = '{2{'{3{y}}}}; // same as '{'{y,y,y},'{y,y,y}}

  initial unpackedints = '{default:2}; // sets elements to 2

  struct {int a; time b;} abkey[1:0];
  initial abkey = '{'{a:1, b:2ns}, '{int:5, time:$time}};

endmodule
