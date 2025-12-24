// IEEE Std 1800-2012
//   19. Functional coverage
//    19.7 Specifying coverage options
//     19.7.1 Covergroup type options

// ! TYPE: POSITIVE

module top(input clk);

  bit [4:0] a_var, b_var;
  covergroup gc @(posedge clk) ;
    a : coverpoint a_var;
    b : coverpoint b_var;
  endgroup

  initial begin
    // Set the comment for all covergroups of type 'gc'
    gc::type_option.comment = "Here is a comment for covergroup g1";
    // Set the weight for coverpoint 'a' of all covergroups of type 'gc'
    gc::a::type_option.weight = 3;
  end

  gc g1 = new;

endmodule
