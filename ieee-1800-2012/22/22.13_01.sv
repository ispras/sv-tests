// IEEE Std 1800-2012
//   22. Compiler directives
//    22.13 `__FILE__ and `__LINE__

// ! TYPE: POSITIVE

`ifndef __FILE__
  `define __FILE__ "unknown"
`endif
`ifndef __LINE__
  `define __LINE__ 0
`endif

module top;

  initial $display("Internal error: null handle at %s, line %d.",
                   `__FILE__, `__LINE__);

endmodule
