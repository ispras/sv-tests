// IEEE Std 1800-2012
//   31. Timing checks
//    31.8 Vector signals in timing checks

// ! TYPE: POSITIVE

module top(Q, CLK, DAT);
  input CLK;
  input [7:0] DAT;
  output reg [7:0] Q;
  always @(posedge CLK)
    Q = DAT;
  specify
    $setup(DAT, posedge CLK, 10);
  endspecify
endmodule
