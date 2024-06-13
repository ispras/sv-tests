/*
 * Copyright 2018 ISP RAS (http://www.ispras.ru)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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

module my_mem (input addr, data);

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
