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
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code

// ! TYPE: POSITIVE

module top(clock, reset);

input clock, reset;
reg q, cnt, d, d1;

property r2;
  q != d;
endproperty

always_ff @(posedge clock iff reset == 0 or posedge reset) begin
  cnt <= reset ? 0 : cnt + 1;
  q <= $past(d1);
  r2_p: assert property (r2);
end

endmodule
