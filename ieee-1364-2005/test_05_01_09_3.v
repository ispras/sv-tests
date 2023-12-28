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
//    5.1 Operators
//      5.1.9 Logical operators
//        Example 3
module test;
  reg inword;
  initial begin
    // A common use of ! is in constructions like the following:
    if (!inword) ;
    // In some cases, the preceding construct makes more sense to someone reading the code than this
    // equivalent construct:
    if (inword == 0) ;
  end
endmodule
