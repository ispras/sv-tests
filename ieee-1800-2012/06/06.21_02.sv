// IEEE Std 1800-2012
//   6. Data types
//    6.21 Scope and lifetime

// ! TYPE: POSITIVE

module top;
  int svar1 = 1; // static keyword optional
  initial begin
    for (int i = 0; i < 3; i++) begin
      automatic int loop3 = 0; // executes every loop
      for (int j = 0; j < 3; j++) begin
        loop3++;
        $display(loop3);
      end
    end // prints '1 2 3 1 2 3 1 2 3'
    for (int i = 0; i < 3; i++) begin
      static int loop2 = 0; // executes once before time 0
      for (int j = 0; j < 3; j++) begin
        loop2++;
        $display(loop2);
      end
    end // prints '1 2 3 4 5 6 7 8 9'
  end
endmodule : top
