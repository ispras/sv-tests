// IEEE Std 1800-2012
//   6. Data types
//    6.16 String data type

// ! TYPE: POSITIVE

module top;
  byte c = "A"; // assigns to 'c' "A"
  bit [10:0] b = "\x41"; // assigns to 'b' 'b000_0100_0001
  bit [1:4][7:0] h = "hello" ; // assigns to 'h' "hello"
endmodule
