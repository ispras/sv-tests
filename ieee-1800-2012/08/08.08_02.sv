// IEEE Std 1800-2012
//   8. Classes
//    8.8 Typed constructor calls

// ! TYPE: POSITIVE

module top;

  class C;
    int c1;
    function new();
      c1 = 2;
    endfunction
  endclass

  class E #(type T = int) extends C;
    T x;
    function new(T x_init);
      super.new();
      x = x_init;
    endfunction
  endclass

  C c;

  initial begin
    c = E #(.T(byte))::new(.x_init(5));
  end

endmodule
