// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.9 Tagged union expressions and member access

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    struct {
      bit [4:0] reg1, reg2, regd;
    } Add;

    union tagged {
      bit [9:0] JmpU;

      struct {
        bit [1:0] cc;
        bit [9:0] addr;
      } JmpC;

    } Jmp;

  } Instr;

  Instr i1, i2;

  reg e;
  reg [4:0] e1, e2, ed;


  initial begin
    // Create an 'Add' instruction with its 3 register fields
    i1 = (e
      ? tagged Add '{e1, 4, ed} // struct members by position
      : tagged Add '{reg2:e2, regd:3, reg1:19}); // by name (order irrelevant)

    // Create a 'Jump' instruction, with "unconditional" sub-opcode
    i1 = tagged Jmp (tagged JmpU 239);

    // Create a 'Jump' instruction, with "conditional" sub-opcode
    i2 = tagged Jmp (tagged JmpC '{2, 83}); // inner struct by position
    i2 = tagged Jmp (tagged JmpC '{cc:2, addr:83}); // by name
  end

endmodule
