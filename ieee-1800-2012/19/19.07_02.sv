// IEEE Std 1800-2012
//   19. Functional coverage
//    19.7 Specifying coverage options

// ! TYPE: POSITIVE

module top(input clk);

  bit [4:0] a_var, b_var;
  covergroup gc (int maxA, int maxB) @(posedge clk) ;
    a : coverpoint a_var;
    b : coverpoint b_var;
  endgroup

  gc g1 = new(10, 20);

  initial begin
    g1.option.comment = "Here is a comment set for the instance g1";
    g1.a.option.weight = 3; // Set weight for coverpoint 'a' of instance 'g1'
  end

endmodule
