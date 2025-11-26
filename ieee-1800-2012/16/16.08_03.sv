// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences

// ! TYPE: POSITIVE

module top(data, en);

input [7:0] data;
input [3:0] en;
reg frame;
reg [7:0] data_bus;
reg [0:7] c_be;

sequence s20_1(data, en);
  (!frame && (data == data_bus)) ##1 (c_be[0:3] == en);
endsequence

endmodule
