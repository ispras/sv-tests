// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.6 Array assignments

// ! TYPE: POSITIVE

module top;

  logic [7:0] V1[10:1];
  logic [7:0] V2[10];
  wire [7:0] W[9:0]; // data type is 'logic [7:0] W[9:0]'
  assign W = V1;
  initial #10 V2 = W;

endmodule
