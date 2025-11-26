// IEEE Std 1800-2012
//   10. Assignment statements
//    10.11 Net aliasing

// ! TYPE: POSITIVE

`ifndef LIB_DFF
  `define LIB_DFF lib1_dff
`endif

module lib1_dff(Reset, Clk, Data, Q, Q_Bar);
  input Reset, Clk, Data;
  output Q, Q_Bar;
endmodule

module lib2_dff(reset, clock, data, q, qbar);
  input reset, clock, data;
  output q, qbar;
endmodule

module lib3_dff(RST, CLK, D, Q, Q_);
  input RST, CLK, D;
  output Q, Q_;
endmodule

module top(rst, clk, d, q, q_bar); // wrapper cell
  input rst, clk, d;
  output q, q_bar;
  alias rst = Reset = reset = RST;
  alias clk = Clk = clock = CLK;
  alias d = Data = data = D;
  alias q = Q;
  alias Q_ = q_bar = Q_Bar = qbar;
  `LIB_DFF top (.*); // 'LIB_DFF' is any of 'lib1_dff', 'lib2_dff' or 'lib3_dff'
endmodule
