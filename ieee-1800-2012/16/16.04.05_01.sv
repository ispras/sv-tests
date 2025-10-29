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
//     16.4.5 Deferred assertions and multiple processes

// ! TYPE: POSITIVE

module top (input x, y, z, w);

reg some_stuff, some_ok, some_fail;
reg other_stuff, other_ok, other_fail;


function bit f (int a, int b);
  // ...
  a1: assert #0 (a == b);
  // ...
endfunction
// ...

always_comb begin : b1
  some_stuff = f(x,y) ? some_ok : some_fail;
  // ...
end

always_comb begin : b2
  other_stuff = f(z,w) ? other_ok : other_fail;
  // ...
end

endmodule
