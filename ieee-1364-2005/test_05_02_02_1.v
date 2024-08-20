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
//   5. Expressions
//    5.2 Operands
//      5.2.2 Array and memory addressing
//        The next example declares a memory of 1024 eight-bit words.

module test;

  reg [7:0] mem_name[0:1023];
  integer addr_expr;
  reg [7:0] expr_result;
  reg [7:0] indirect_result;

  initial begin
    expr_result = mem_name[addr_expr];
    indirect_result = mem_name[mem_name[3]];
  end

endmodule
