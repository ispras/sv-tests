// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.14 Streaming operators (pack/unpack)
//      11.4.14.2 Re-ordering of the generic stream

// ! TYPE: POSITIVE

module top;

  int j = {"A", "B", "C", "D"};
  bit [31:0] b1 = {>> {j}}; // generates stream "A" "B" "C" "D"
  bit [31:0] b2 = {<< byte {j}}; // generates stream "D" "C" "B" "A"
                                 // (little endian)
  bit [31:0] b3 = {<< 16 {j}}; // generates stream "C" "D" "A" "B"
  bit [7:0] b4 = {<< {8'b0011_0101}}; // generates stream 'b1010_1100
                                      // (bit reverse)
  bit [5:0] b5 = {<< 4 {6'b11_0101}}; // generates stream 'b0101_11
  bit [5:0] b6 = {>> 4 {6'b11_0101}}; // generates stream 'b1101_01 (same)
  bit [3:0] b7 = {<< 2 {{<< { 4'b1101}}}}; // generates stream 'b1110

endmodule
