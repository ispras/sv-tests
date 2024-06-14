/*
 * Copyright 2018-2024 ISP RAS (http://www.ispras.ru)
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
//       7.1.5 The range specification
//         An array of instances shall have a continuous range. One instance identifier shall be
//         associated with only one range to declare an array of instances.
//         The range specification shall be optional. If no range specification is given, a single
//         instance shall be created.

module test(in1, in2, out1);
  input in1, in2;
  output out1;
  `ifdef NEGATIVE_TEST
    nand  #2 t_nand[0:3] (out1, in1, in2), t_nand[4:7] (out1, in1, in2); // illegal
  `endif
  nand  #2 t_nand[0:7](out1, in1, in2);
  nand  #2 x_nand[0:3] (out1, in1, in2), y_nand[4:7] (out1, in1, in2);
endmodule
