// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.6 Command line input

// ! TYPE: POSITIVE

module top;

  real frequency;
  logic [8 * 32 : 1] testname;
  logic [64 * 8 : 1] pstring;
  logic clk;

  initial begin
    if ($value$plusargs("TESTNAME = %s", testname)) begin
      $display(" TESTNAME = %s.", testname);
      $finish;
    end
    if (!($value$plusargs("FREQ + %0F", frequency)))
      frequency = 8.33333; // 166 MHz
    $display("frequency = %f", frequency);
    pstring = "TEST%d";
    if ($value$plusargs(pstring, testname))
      $display("Running test number %0d.", testname);
  end

endmodule
