// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.14 Random stability
//     18.14.2 Thread stability

// ! TYPE: POSITIVE

module top;

  integer x, y, z;
  initial begin
    fork
      // set a seed at the start of a thread
      begin $urandom_range(100); x = $urandom; end
      // set a seed during a thread
      begin y = $urandom; $urandom_range(200); end
      // draw 2 values from the thread RNG
      begin z = $urandom + $urandom ; end
    join
  end

endmodule
