// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.7 Value passing between productions

// ! TYPE: POSITIVE

module top;

  int flag;
  initial randsequence(main)
    main : first second gen;
    first : add | dec;
    second : pop | push;
    add : gen("add");
    dec : gen("dec");
    pop : gen("pop");
    push : gen("push");
    gen(string s = "done") : {$display(s);};
  endsequence

endmodule
