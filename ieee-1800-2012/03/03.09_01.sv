// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.9 Packages

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

module top (
  input  ComplexPkg::Complex a,
  input  ComplexPkg::Complex b,
  output ComplexPkg::Complex sum
);
  import ComplexPkg::*;

  always_comb begin
    sum  = add(a, b);
  end
endmodule
