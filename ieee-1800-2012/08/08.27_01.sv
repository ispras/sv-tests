// IEEE Std 1800-2012
//   8. Classes
//    8.27 Typedef class

// ! TYPE: POSITIVE

typedef class C ;

module top ;
  C#(1, real) v2 ; // positional parameter override
  C#(.p(2), .T(real)) v3 ; // named parameter override
endmodule

class C #(parameter p = 2, type T = int);
endclass
