// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.6 Pattern matching conditional statements
//     12.6.1 Pattern matching in case statements

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

  Instr instr;
  bit [9:0] pc, rf;

  initial begin
    case (instr) matches
      tagged Add '{.r1, .r2, .rd} &&& (rd != 0) : rf[rd] = rf[r1] + rf[r2];
      tagged Jmp (tagged JmpU .a) : pc = pc + a;
      tagged Jmp (tagged JmpC '{.c, .a}) : if (rf[c]) pc = a;
    endcase
  end

endmodule
