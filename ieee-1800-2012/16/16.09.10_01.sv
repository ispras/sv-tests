// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.10 Sequence contained within another sequence

// ! TYPE: POSITIVE

module top(irdy, trdy);

input irdy, trdy;

sequence rule1;
  !trdy[*7] within ($fell(irdy) ##1 !irdy[*8]);
endsequence

endmodule
