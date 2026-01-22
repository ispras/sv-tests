// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.6 Hierarchical names

// ! TYPE: POSITIVE

module top();

  initial begin
    fork : mod_1
      reg x;
      mod_2.x = 1;
    join
    fork : mod_2
      reg x;
      mod_1.x = 0;
    join
  end

endmodule
