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
//       12.2.3 Parameter dependence
//         A parameter (for example, memory_size ) can be defined with an expression containing
//         another parameter (for example, word_size ). However, overriding a parameter, whether
//         by a defparam statement or in a module instantiation statement, effectively replaces
//         the parameter definition with the new expression. Because memory_size depends on the
//         value of word_size , a modification of word_size changes the value of memory_size. For
//         example, in the following parameter declaration, an update of word_size, whether by
//         defparam statement or in an instantiation statement for the module that defined these
//         parameters, automatically updates memory_size . If memory_size is updated due to either
//         a defparam or an instantiation statement, then it will take on that value, regardless of
//         the value of word_size.

module test;

  parameter
    word_size = 32,
    memory_size = word_size * 4096;

endmodule
