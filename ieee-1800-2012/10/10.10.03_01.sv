// IEEE Std 1800-2012
//   10. Assignment statements
//    10.10 Unpacked array concatenation
//     10.10.3 Nesting of unpacked array concatenations

// ! TYPE: POSITIVE

module top;

  string S1, S2;
  typedef string T_SQ[$];
  T_SQ SQ, SQ1, SQ2;

  initial begin
    S1 = "S1";
    S2 = "S2";
    SQ = '{"element 0", "element 1"}; // assignment pattern, two strings

    // result: '{"S1", "element 0", "element 1", "element 3 is S2"}
    SQ1 = {S1, SQ, {"element 3 is ", S2} };

    // result: '{"S1", "element 0", "element 1", "element 3 is ", "S2"}
    SQ2 = {S1, SQ, T_SQ'{"element 3 is ", S2} };
  end

endmodule
