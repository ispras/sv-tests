// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.6 Randomization methods
//     18.6.1 Randomize()

// ! TYPE: POSITIVE

module top;

  class SimpleSum;
    rand bit [7:0] x, y, z;
    constraint c {z == x + y;}
  endclass

  SimpleSum p = new;
  int success = p.randomize();
  initial begin
    if (success == 1) $display("success == 1");
  end

endmodule
