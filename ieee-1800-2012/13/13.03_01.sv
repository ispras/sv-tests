// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.3 Tasks

// ! TYPE: POSITIVE

module top;

  task mytask1 (output int x, input logic y);
  endtask

  task mytask2;
    output x;
    input y;
    int x;
    logic y;
  endtask

  task mytask3(a, b, output logic [15:0] u, v);
  endtask

  // the resultant declaration of 'b' is 'input [3:0][7:0] b[3:0]'
  task mytask4(input [3:0][7:0] a, b[3:0], output [3:0][7:0] y[1:0]);
  endtask

endmodule
