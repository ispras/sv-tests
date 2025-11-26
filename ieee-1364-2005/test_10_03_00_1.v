// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.3 Disabling of named blocks and tasks
//       This example illustrates how a block disables itself.

// ! TYPE: POSITIVE

module test;

  reg rega, regb, regc;

  initial
    begin : block_name
      rega = regb;
      disable block_name;
      regc = rega; // this assignment will never execute
    end
endmodule
