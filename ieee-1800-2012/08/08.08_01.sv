// IEEE Std 1800-2012
//   8. Classes
//    8.8 Typed constructor calls

// ! TYPE: POSITIVE

module top;

  class C;
    int c1 = 1;
    int c2 = 1;
    int c3 = 1;
    function new(int a);
      c2 = 2;
      c3 = a;
    endfunction
  endclass

  class D extends C;
    int d1 = 4;
    int d2 = c2;
    int d3 = 6;
    function new;
      super.new(d3);
    endfunction
  endclass

  C c1 = D::new; // variable 'c1' of superclass type 'C' now references
                 // a newly constructed object of type 'D'

  D d = new;
  initial begin
    C c2 = d;
  end

endmodule
