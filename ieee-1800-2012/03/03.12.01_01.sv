// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.12 Compilation and elaboration
//     3.12.1 Compilation units

// ! TYPE: POSITIVE

bit b;

module top;

task t;
  int b;
  b = 5 + $unit::b; // '$unit::b' is the one outside
endtask

endmodule
