// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.8 Time literals

// ! TYPE: POSITIVE

`timescale 1ns / 1ps

module top;
  realtime delay1 = 2.1ns;
  realtime delay2 = 40ps;
endmodule