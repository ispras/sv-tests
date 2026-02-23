// IEEE Std 1800-2012
//   8. Classes
//    8.23 Class scope resolution operator ::

// ! TYPE: POSITIVE

module top;

  class Base;
    typedef enum {bin, oct, dec, hex} radix;
    static task print(radix r, integer n);
    endtask
  endclass

  Base b = new;
  int bin = 123;

  initial begin
    b.print(Base::bin, bin); // 'Base::bin' and 'bin' are different
    Base::print(Base::hex, 66);
  end

endmodule
