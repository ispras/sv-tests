// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters
//     23.10.2 Module instance parameter value assignment
//      23.10.2.1 Parameter value assignment by ordered list

// ! TYPE: POSITIVE

module my_mem(input addr, output data);
  parameter addr_width = 16;
  localparam mem_size = 1 << addr_width;
  parameter data_width = 8;
endmodule

module top;
  logic addr, data;
  my_mem #(12, 16) m(addr, data);
endmodule
