// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence

// ! TYPE: POSITIVE

module top;

  initial randsequence(main)
    main : first second done;
    first : add | dec;
    second : pop | push;
    done : {$display("done");};
    add : {$display("add");};
    dec : {$display("dec");};
    pop : {$display("pop");};
    push : {$display("push");};
  endsequence

endmodule
