// IEEE Std 1364-2005
//   15. Timing checks
//     15.7 Vector signals in timing checks
//       Example 3 — To perform the previous sample setup check on the positive clk edge only when
//       clr and set are high, add the following statement outside the specify block.

// ! TYPE: POSITIVE

module DFF (Q, CLK, DAT);

  input CLK;
  input [7:0] DAT;
  output [7:0] Q;

  always @(posedge CLK) begin
    force Q = DAT;
    release Q;
  end

  specify
    $setup(DAT, posedge CLK, 10);
  endspecify
endmodule
