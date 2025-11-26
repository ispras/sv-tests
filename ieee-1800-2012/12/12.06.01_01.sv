// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.6 Pattern matching conditional statements
//     12.6.1 Pattern matching in case statements

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    void Invalid;
    int Valid;
  } VInt;

  VInt v;

  initial begin
    case (v) matches
      tagged Invalid : $display ("v is Invalid");
      tagged Valid .n : $display ("v is Valid with value %d", n);
    endcase
  end

endmodule
