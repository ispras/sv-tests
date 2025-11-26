// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.2 Overriding module parameter values
//       12.2.2 Module instance parameter value assignment
//         12.2.2.1 Parameter value assignment by ordered list
//           Local parameters cannot be overridden; therefore, they are not considered part of the
//           ordered list for parameter value assignment. In the following example, addr_width will
//           be assigned the value 12, and data_width will be assigned the value 16. mem_size will
//           not be explicitly assigned a value due to the ordered list, but will have the value
//           4096 due to its declaration expression.

// ! TYPE: POSITIVE

module my_mem(input addr, data);

  parameter addr_width = 16;
  localparam mem_size = 1 << addr_width;
  parameter data_width = 8;
  // some code
endmodule

module top(addr, data);

  input addr, data;
  // some code
  my_mem #(12, 16) m(addr,data);
endmodule
