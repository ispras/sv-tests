/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.2 Implicit event_expression list

// ! TYPE: POSITIVE

module top;

  reg a, b, c, d, f, y;

  function reg myfunction(input reg in);
    myfunction = in;
  endfunction

  always @(*) begin // equivalent to '@(a or b or c or d or f)'
    y = (a & b) | (c & d) | myfunction(f);
  end

endmodule
