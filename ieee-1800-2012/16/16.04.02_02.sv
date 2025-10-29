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
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

// ! TYPE: POSITIVE

module top(input a, b);

class RptObj;
  function new();
  endfunction

  function success(int id);
  endfunction

  function error(int id, logic a_v, logic b_v);
  endfunction
endclass

RptObj rptobj = new();

always @(a or b) begin : b1
  a3: assert #0 (a == b) rptobj.success(0); else rptobj.error(0, a, b);
  #1;
  a4: assert #0 (a == b) rptobj.success(1); else rptobj.error(1, a, b);
end

endmodule
