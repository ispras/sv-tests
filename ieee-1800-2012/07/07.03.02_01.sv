// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.3 Unions
//    7.3.2 Tagged unions

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    void Invalid;
    int Valid;
  } VInt;

endmodule
