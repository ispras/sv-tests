// IEEE Std 1800-2012
//   26. Packages
//    26.4 Using packages in module headers

// ! TYPE: POSITIVE

package A;
  typedef struct {
    bit [7:0] opcode;
    bit [23:0] addr;
  } instruction_t;
endpackage: A

package B;
  typedef enum bit {FALSE, TRUE} boolean_t;
endpackage: B

module top import A::instruction_t, B::*;
           #(WIDTH = 32)
            (input [WIDTH - 1:0] data,
             input instruction_t a,
             output [WIDTH - 1:0] result,
             output boolean_t OK
            );
  // ...
endmodule
