// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.2 Structures

// ! TYPE: POSITIVE

module top;

  struct { bit [7:0] opcode; bit [23:0] addr; } IR; // anonymous structure
                                                    // defines variable 'IR'

  typedef struct {
    bit [7:0] opcode;
    bit [23:0] addr;
  } instruction; // named structure type

  initial begin
    instruction IR; // define variable
    IR.opcode = 1; // set field in 'IR'.
  end

endmodule
