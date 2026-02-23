// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.3 Concepts and usage

// ! TYPE: VARYING

module top;

  class XYPair;
    rand integer x, y;
  endclass

  class MyXYPair extends XYPair;
    function void pre_randomize();
      super.pre_randomize();
      $display("Before randomize x = %0d, y = %0d", x, y);
    endfunction

    function void post_randomize();
      super.post_randomize();
      $display("After randomize x = %0d, y = %0d", x, y);
    endfunction
  endclass

endmodule
