// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.3 Parameterized modules

// ! TYPE: POSITIVE

module top #(num_code_bits = 3, localparam num_out_bits = 1 << num_code_bits)
            (input [num_code_bits - 1 : 0] A,
             output reg [num_out_bits - 1 : 0] Y);
endmodule
