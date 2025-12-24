// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.6 Command line input

// ! TYPE: POSITIVE

module top;

  initial begin
    if ($test$plusargs("HELLO")) $display("Hello argument found.");
    if ($test$plusargs("HE")) $display("The HE subset string is detected.");
    if ($test$plusargs("H")) $display("Argument starting with H found.");
    if ($test$plusargs("HELLO_HERE")) $display("Long argument.");
    if ($test$plusargs("HI")) $display("Simple greeting.");
    if ($test$plusargs("LO")) $display("Does not match.");
  end

endmodule
