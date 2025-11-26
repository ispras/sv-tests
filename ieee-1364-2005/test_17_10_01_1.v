// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.10 Command line input
//       17.10.1 $test$plusargs (string)

// ! TYPE: POSITIVE

module test;
  initial begin
    if ($test$plusargs("HELLO"))      $display("Hello argument found.");
    if ($test$plusargs("HE"))         $display("The HE subset string is detected.");
    if ($test$plusargs("H"))          $display("Argument starting with H found.");
    if ($test$plusargs("HELLO_HERE")) $display("Long argument.");
    if ($test$plusargs("HI"))         $display("Simple greeting.");
    if ($test$plusargs("LO"))         $display("Does not match.");
  end
endmodule
