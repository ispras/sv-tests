// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.8 Upwards name referencing

// ! TYPE: POSITIVE

module a;
  integer i;
  b a_b1();
endmodule

module b;
  integer i;
  c b_c1(),
  b_c2();

  initial // downward path references two copies of 'i':
    #10 b_c1.i = 2; // 'a.a_b1.b_c1.i', 'd.d_b1.b_c1.i'
endmodule

module c;
  integer i;
  initial begin // local name references four copies of 'i':
    i = 1; // 'a.a_b1.b_c1.i', 'a.a_b1.b_c2.i',
           // 'd.d_b1.b_c1.i', 'd.d_b1.b_c2.i'
    b.i = 1; // upward path references two copies of 'i':
             // 'a.a_b1.i', 'd.d_b1.i'
  end
endmodule

module d;
  integer i;
  b d_b1();
  initial begin
    a.i = 1;
    a.a_b1.i = 2;
    a.a_b1.b_c1.i = 3;
    a.a_b1.b_c2.i = 4;
  end
endmodule

module top;
  a a();
  d d();
endmodule
