// IEEE Std 1800-2012
//   16. Assertions
//    16.10 Local variables

// ! TYPE: POSITIVE

module top;

  reg a;
  integer MAX;

  sequence count_a_cycles;
    int x;
    ($rose(a), x = 1)
    ##1 (a, x = x + 1)[*0:$]
    ##1 !a && (x <= MAX);
  endsequence

endmodule
