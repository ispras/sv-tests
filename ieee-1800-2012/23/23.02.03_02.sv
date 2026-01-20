// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.3 Parameterized modules

// ! TYPE: POSITIVE

module top #(parameter MSB = 3, LSB = 0, DEPTH = 4)
            (input wire [MSB:LSB] in,
             input wire clk, read, write, reset,
             output logic [MSB:LSB] out,
             output logic full, empty);
endmodule
