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
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.4 Event or operator
//         Nets and variables that appear on the right-hand side of assignments, in function and
//         task calls, in case and conditional expressions, as an index variable on the left-hand
//         side of assignments, or as variables in case item expressions shall all be included by
//         these rules.

// ! TYPE: POSITIVE

module test(a, b, c, d, f);

  input a, b, c, d, f;
  reg y;

  function myfunction;
    input f;
    begin
      myfunction = f;
    end
  endfunction

  always @(*) // equivalent to @(a  or  b  or  c  or  d  or  f)
    y = (a & b) | (c & d) | myfunction(f);

endmodule
