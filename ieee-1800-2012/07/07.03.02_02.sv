// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.3 Unions
//    7.3.2 Tagged unions

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

endmodule
