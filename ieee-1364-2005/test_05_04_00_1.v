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
//     5.4 Expression bit lengths
//       For example, should an arithmetic add of two 16-bit values perform the evaluation using
//       16 bits, or should the evaluation use 17 bits in order to allow for a possible carry
//       overflow? The answer depends on the type of device being modeled and whether that device
//       handles carry overflow. The Verilog HDL uses the bit length of the operands to determine
//       how many bits to use while evaluating an expression. The bit length rules are given in
//       5.4.1. In the case of the addition operator, the bit length of the largest operand,
//       including the left-hand side of an assignment, shall be used.

// ! TYPE: POSITIVE

module test;

  reg [15:0] a, b; // 16-bit regs
  reg [15:0] sumA; // 16-bit reg
  reg [16:0] sumB; // 17-bit reg

  initial begin
    sumA = a + b; // expression evaluates using 16 bits
    sumB = a + b; // expression evaluates using 17 bits
  end

endmodule
