// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.11 Array literals

// ! TYPE: POSITIVE

module top;
  int n[1:2][1:3];
  int m[1:2][1:6];

  typedef int triple [1:3];
  triple t;
  triple b;

  initial begin
    n = '{'{0,1,2}, '{3{4}}};
    m = '{2{'{3{4, 5}}}};
    t = triple'{0,1,2};
    b = '{1:1, default:0};
  end
endmodule