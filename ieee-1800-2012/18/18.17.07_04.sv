// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.7 Value passing between productions

// ! TYPE: POSITIVE

module top;

  typedef int int_dynamic_array[];

  function int_dynamic_array GenQueue(int low, int high);
    int_dynamic_array q;

    randsequence()
      TOP : BOUND(low) LIST BOUND(high) ;
      LIST : LIST ITEM := 8 {q = {q, ITEM};}
             | ITEM := 2 {q = {q, ITEM};}
             ;
      int ITEM : {return $urandom_range(low, high);};
      BOUND(int b) : {q = {q, b};};
    endsequence

    GenQueue = q;
  endfunction

endmodule
