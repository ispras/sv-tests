// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables

// ! TYPE: POSITIVE

module top;

  checker chk;
    // 'a' may assume values '3' and '5' only
    rand bit r;
    let a = r ? 3'd3 : 3'd5;
  endchecker

endmodule
