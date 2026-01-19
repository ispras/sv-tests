// IEEE Std 1800-2012
//   24. Programs
//    24.3 The program construct

// ! TYPE: POSITIVE

module top;

  int shared; // variable shared by programs 'p1' and 'p2'

  program p1;
  endprogram

  program p2;
  endprogram // 'p1' and 'p2' are implicitly instantiated once in module 'top'

endmodule
