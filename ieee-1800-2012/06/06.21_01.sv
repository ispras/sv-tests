// IEEE Std 1800-2012
//   6. Data types
//    6.21 Scope and lifetime

// ! TYPE: POSITIVE

module top;
  int st0; // static
  initial begin
    int st1; // static
    static int st2; // static
    automatic int auto1; // automatic
  end
  task automatic t1();
    int auto2; // automatic
    static int st3; // static
    automatic int auto3; // automatic
  endtask
endmodule
