// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.2 if–else production statements

// ! TYPE: POSITIVE

module top;

  int depth;
  function do_push();
  endfunction
  function do_pop();
  endfunction
  initial randsequence()
    PP_PO : if (depth < 2) PUSH else POP;
    PUSH : {++depth; do_push();};
    POP : {--depth; do_pop();};
  endsequence

endmodule
