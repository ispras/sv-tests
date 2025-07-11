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
//      5.2.3 Strings
//        5.2.3.2 String value padding and potential problems
//          When strings are assigned to variables, the values stored shall be padded on the left
//          with zeros. Padding can affect the results of comparison and concatenation operations.
//          The comparison and concatenation operators shall not distinguish between zeros resulting
//          from padding and the original string characters ( \0, ASCII NUL ). The following example
//          illustrates the potential problem

// ! TYPE: VARYING

module test;

  reg [8*10:1] s1, s2;

  initial begin

    s1 = "Hello";
    s2 = " world!";
    if ({s1,s2} == "Hello world!")
      $display ("strings are equal");
  end

endmodule
