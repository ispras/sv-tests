// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.10 Structure literals

// ! TYPE: POSITIVE

module top;
  typedef struct {int a; shortreal b;} ab;
  ab c;
  ab d;
  ab abarr[1:0];

  struct {int X, Y, Z;} XYZ;
  typedef struct {int a, b[4];} ab_t;
  int a = 10, b = 20, c_val = 30;
  ab_t v1[1:0][2:0];

  initial begin
    c = '{0, 0.0};

    abarr[1:0] = '{'{1, 1.0}, '{2, 2.0}};

    c = '{a:5, b:3.14};
    c = '{default:0};
    d = ab'{int:1, shortreal:1.0};

    XYZ = '{3{1}};
    v1 = '{2{'{3{'{a, '{2{b, c_val}}}}}}};
  end
endmodule