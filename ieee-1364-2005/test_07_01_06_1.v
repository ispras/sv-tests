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
//   7. Gate- and switch-level modeling
//     7.1 Gate and switch declaration syntax
//       7.1.6 Primitive instance connection list
//         The following declaration of nand_array declares four instances that can be referenced by
//           nand_array[1], nand_array[2], nand_array[3], and nand_array[4], respectively.

// ! TYPE: POSITIVE

module test(in1, in2, out1);

  input in1, in2;
  output out1;
  nand #2 nand_array[1:4](out1, in1, in2);
endmodule
