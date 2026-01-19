// IEEE Std 1800-2012
//   22. Compiler directives
//    22.5 `define, `undef, and `undefineall
//     22.5.1 `define

// ! TYPE: VARYING

module top;

  `define D(x,y) initial $display("start", x, y, "end");
  `D("msg1", "msg2") // expands to
                     // 'initial $display("start", "msg1" , "msg2", "end");'
  `D(" msg1", ) // expands to 'initial $display("start", " msg1" , , "end");'
  `D(, "msg2 ")  // expands to 'initial $display("start", , "msg2 ", "end");'
  `D(,) // expands to 'initial $display("start", , , "end");'
  `D(, ) // expands to 'initial $display("start", , , "end");'
`ifdef NEGATIVE_TEST
  `D("msg1") // illegal, only one argument
  `D()  // illegal, only one empty argument
  `D(, , ) // illegal, more actual than formal arguments
`endif

endmodule
