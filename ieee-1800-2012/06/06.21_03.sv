// IEEE Std 1800-2012
//   6. Data types
//    6.21 Scope and lifetime

// ! TYPE: NEGATIVE

module top; // should not compile
  initial begin
    int svar2 = 2; // static/automatic needed to show intent
    for (int i = 0; i < 3; i++) begin
      int loop3 = 0; // illegal statement
      for (int i = 0; i < 3; i++) begin
        loop3++;
        $display(loop3);
      end
    end
  end
endmodule : top
