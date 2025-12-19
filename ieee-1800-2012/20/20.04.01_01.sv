// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.4 Timescale system tasks
//     20.4.1 $printtimescale

// ! TYPE: POSITIVE

`timescale 1 ms / 1 us
module top;
  initial $printtimescale(b_dat.c1);
endmodule

`timescale 10 fs / 1 fs
module b_dat;
  c_dat c1 ();
endmodule

`timescale 1 ns / 1 ns
module c_dat;
endmodule
