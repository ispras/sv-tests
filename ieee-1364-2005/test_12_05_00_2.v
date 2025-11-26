// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.5 Hierarchical names
//       The next example shows how a pair of named blocks can refer to items declared within each
//       other.

// ! TYPE: POSITIVE

module test;

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
