// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.2 Display system tasks
//     21.2.1 The display and write tasks
//      21.2.1.2 Format specifications

// ! TYPE: POSITIVE

module top;

  logic [31:0] rval;
  pulldown (pd);

  initial begin
    rval = 101;
    $display("rval = %h hex %d decimal", rval, rval);
    $display("rval = %o octal\nrval = %b bin", rval, rval);
    $display("rval has %c ascii character value", rval);
    $display("pd strength value is %v", pd);
    $display("current scope is %m");
    $display("%s is ascii value for 101", 101);
    $display("simulation time is %t", $time);
  end

endmodule
