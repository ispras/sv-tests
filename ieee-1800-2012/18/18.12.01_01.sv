// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.12 Randomization of scope variables—std::randomize()
//     18.12.1 Adding constraints to scope variables—std::randomize() with

// ! TYPE: POSITIVE

module top;

  task stimulus(int length);
  int a, b, c, success;
    success = std::randomize(a, b, c) with {a < b; a + b < length;};
    success = std::randomize(a, b) with {b - a > length;};
  endtask

endmodule
