// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.6 Pattern matching conditional statements
//     12.6.2 Pattern matching in if statements

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    union tagged {
      struct { logic [3:0] cc; logic [31:0] addr; } JmpC;
    } Jmp;
  } Instr;

  Instr e;

  logic [31:0] a, addr_out;
  logic [3:0] c, cc_out;

  initial begin
    if (e matches (tagged Jmp (tagged JmpC '{cc:.c, addr:.a}))) begin
      cc_out = c;
      addr_out = a;
    end
    else begin
      cc_out = 4'b0;
      addr_out = 32'b0;
    end
  end

endmodule
