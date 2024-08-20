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
//     9.4 Conditional statement
//       Because the else part of an if-else is optional, there can be confusion when an else
//       is omitted from a nested if sequence. This is resolved by always associating the else
//       with the closest previous if that lacks an else. In the example below, the else goes
//       with the inner if, as shown by indentation.

module test;

  reg index, rega, regb, result;

  initial begin
  if (index > 0)
    if (rega > regb)
      result = rega;
    else // else applies to preceding if
      result = regb;
  end
endmodule
