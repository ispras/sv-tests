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
//     9.6 Looping statements
//       The following example counts the number of logic 1 values in rega.

// ! TYPE: POSITIVE

module test;

  reg count, rega;

  initial
    begin : count1s
      reg [7:0] tempreg;
      count = 0;
      tempreg = rega;
      while (tempreg) begin
        if (tempreg[0])
          count = count + 1;
        tempreg = tempreg >> 1;
      end
    end
endmodule
