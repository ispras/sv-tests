// IEEE Std 1800-2012
//   6. Data types
//    6.21 Scope and lifetime

// ! TYPE: POSITIVE

module top;
  program automatic test ;
    int i; // not within a procedural block - static
    task t(int a); // arguments and variables in 't' are automatic
      // unless explicitly declared static
    endtask
  endprogram
endmodule
