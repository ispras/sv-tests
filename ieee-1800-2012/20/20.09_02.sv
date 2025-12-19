// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.9 Bit vector system functions

// ! TYPE: POSITIVE

module top;

  logic [1:0] bad_bits;
  logic [31:0] myvec;
  logic design_initialization_done;
  always_comb begin
    if (!design_initialization_done) begin
      bad_bits[0] = 'x;
      bad_bits[1] = 'x; // Repeated 'control_bit' same as single occurrence
    end else begin
      bad_bits[0] = 'x;
      bad_bits[1] = 'z;
    end

    // 'Z' allowed during initialization, but no 'Z' or 'X' allowed afterwards
    a1: assert ($countbits(myvec, bad_bits[0], bad_bits[1]) == 0);
  end

endmodule
