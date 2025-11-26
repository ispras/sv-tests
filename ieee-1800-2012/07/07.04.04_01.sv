// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.4 Packed and unpacked arrays
//    7.4.4 Memories

// ! TYPE: POSITIVE

module top;

  logic [7:0] mema [0:255]; // declares a memory array of 256 8-bit
                            // elements. The array indices are 0 to 255
  logic data;
  int addr = 5;

  initial begin
    mema[5] = 0; // Write to word at address '5'
    data = mema[addr]; // Read word at address indexed by 'addr'
  end

endmodule
