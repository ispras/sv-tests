// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.10 Command line input
//       17.10.2 $value$plusargs (user_string, variable)

// ! TYPE: POSITIVE

`define STRING reg [1024 * 8:1]

module goodtasks;

  `STRING str;
  integer intvar;
  reg [31:0] vect;
  real realvar;

  initial begin
    if ($value$plusargs("TEST=%d", intvar))
      $display("value was %d", intvar);
    else
      $display("+TEST= not found");
      #100 $finish;
    end
endmodule

module ieee1364_example;

  real frequency;
  reg [8*32:1] testname;
  reg [64*8:1] pstring;
  reg clk;

  initial begin
  if ($value$plusargs("TESTNAME=%s", testname))
  begin
    $display(" TESTNAME= %s.", testname);
    $finish;
    end
  if (!($value$plusargs("FREQ+%0F", frequency)))
    frequency = 8.33333; // 166 MHz
  $display("frequency = %f", frequency);
  pstring = "TEST%d";
  if ($value$plusargs(pstring, testname))
    $display("Running test number %0d.", testname);
end
endmodule
