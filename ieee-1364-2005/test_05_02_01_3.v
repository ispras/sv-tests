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
//      5.2.1 Vector bit-select and part-select addressing
//        Example 1 - The following example specifies the single bit of acc vector
//        that is addressed by the operand index:

// ! TYPE: POSITIVE

module test;

  parameter index = 13;

  // The actual bit that is accessed by an address is, in part, determined by the declaration of
  // acc. For instance, each of the declarations of acc shown in the next example causes a
  // particular value of index to access a different bit:
  reg [15:0] acc1;
  reg [2:17] acc2;

  initial begin
    acc1[index] = acc2[index];
  end

endmodule
