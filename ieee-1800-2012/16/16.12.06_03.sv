// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.6 Implication

// ! TYPE: POSITIVE

module top(write_en, data_valid);

input write_en;
output data_valid;
reg [0:4] addr;
reg [0:8] retire_address, write_address;

property p16;
  (write_en & data_valid) ##0
    (write_en && (retire_address[0:4]==addr)) [*2] |->
      ##[3:8] write_en && !data_valid &&(write_address[0:4]==addr);
endproperty

property p16_nested;
  (write_en & data_valid) |->
    (write_en && (retire_address[0:4]==addr)) [*2] |->
      ##[3:8] write_en && !data_valid && (write_address[0:4]==addr);
endproperty

endmodule
