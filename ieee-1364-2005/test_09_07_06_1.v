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
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.6 Level-sensitive event control
//         The following example shows the use of the wait statement to accomplish level-sensitive
//         event control. If the value of enable is 1 when the block is entered, the wait statement
//         will delay the evaluation of the next statement (#10 a = b;) until the value of enable
//         changes to 0. If enable is already 0 when the begin-end block is entered, then the
//         assignment “a = b;” is evaluated after a delay of 10 and no additional delay occurs.

module test(enable);

  input enable;
  reg a, b, c, d;

  initial begin
    wait (!enable) #10 a = b;
    #10 c = d;
  end
endmodule
