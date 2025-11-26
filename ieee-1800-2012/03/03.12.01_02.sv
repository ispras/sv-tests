// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.12 Compilation and elaboration
//     3.12.1 Compilation units

// ! TYPE: NEGATIVE

module top;

task t;
  int x;
  x = 5 + b; // illegal - 'b' is defined later
  x = 5 + $unit::b; // illegal - '$unit' adds no special forward referencing
endtask

bit b;

endmodule
