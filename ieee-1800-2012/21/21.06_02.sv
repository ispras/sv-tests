// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.6 Command line input

// ! TYPE: POSITIVE

`define STRING logic [1024 * 8 : 1]

module top;

  `STRING str;
  integer i1;
  logic [31:0] vect;
  real realvar;

  initial begin
    if ($value$plusargs("TEST = %d", i1))
      $display("value was %d", i1);
    else
      $display("+ TEST = not found");
    #100 $finish;
  end

endmodule
