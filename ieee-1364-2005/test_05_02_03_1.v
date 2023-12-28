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
//          The following example declares a string variable large enough to hold 14 characters
//          and assigns a value to it.
//          The example then manipulates the string using the concatenation operator.

module string_test;
  reg [8*14:1] stringvar;

  initial begin
    stringvar = "Hello world";
    $display ("%s is stored as %h", stringvar, stringvar);
    stringvar = {stringvar,"!!!"};
    $display ("%s is stored as %h", stringvar, stringvar);
  end
endmodule
