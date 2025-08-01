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
//       If that association is not desired, a begin-end block statement shall be used to force
//       the proper association, as shown below.

// ! TYPE: POSITIVE

module test;

  reg index, rega, regb, result;

  initial begin
    if (index > 0) begin
      if (rega > regb)
        result = rega;
    end
    else result = regb;
  end
endmodule
