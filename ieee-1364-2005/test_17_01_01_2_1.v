// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.1 Display system tasks
//       17.1.1 The display and write tasks
//         17.1.1.2 Format specifications

// ! TYPE: POSITIVE

module disp;

  reg [31:0] rval;
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
