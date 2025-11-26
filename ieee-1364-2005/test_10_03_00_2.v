// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.3 Disabling of named blocks and tasks
//       This example shows the disable statement being used within a named block in a manner
//       similar to a forward goto. The next statement executed after the disable statement is
//       the one following the named block.

// ! TYPE: POSITIVE

module test;

  reg a, rega, regb;

  initial
    begin : block_name
      rega = regb;
      if (a == 0)
        disable block_name;
    end // end of named block
    // continue with code following named block

endmodule
