// IEEE Std 1800-2012
//   26. Packages
//    26.2 Package declarations

// ! TYPE: POSITIVE

package ComplexPkg;
  typedef struct {
    shortreal i, r;
  } Complex;

  function Complex add(Complex a, b);
    add.r = a.r + b.r;
    add.i = a.i + b.i;
  endfunction

  function Complex mul(Complex a, b);
    mul.r = (a.r * b.r) - (a.i * b.i);
    mul.i = (a.r * b.i) + (a.i * b.r);
  endfunction
endpackage : ComplexPkg

module top;

  import ComplexPkg::*;

  Complex a, b, c, d;

  initial begin
    a.r = 1.0; a.i = 2.0;
    b.r = 3.0; b.i = 4.0;

    c = add(a, b);

    d = mul(a, b);
  end

endmodule
