// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.9 Tagged union expressions and member access

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    void Invalid;
    int Valid;
  } VInt;

  VInt vi1, vi2;

  initial begin
    vi1 = tagged Valid (23 + 34); // Create a 'Valid' value
    vi2 = tagged Invalid; // Create an 'Invalid' value
  end

endmodule
