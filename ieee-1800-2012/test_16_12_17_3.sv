/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//    16.12 Declaring properties
//     16.12.17 Recursive properties

module test;

property fibonacci1 (local input int a, b, n, int fib_sig);
  (n > 0)
  |->
  (
    (fib_sig == a)
    and
    (1'b1 |=> fibonacci1(b, a + b, n - 1, fib_sig))
  );
endproperty

// illegal
`ifdef NEGATIVE_TEST
property fibonacci2 (int a, b, n, fib_sig);
  (n > 0)
  |->
  (
    (fib_sig == a)
    and
    (1'b1 |=> fibonacci2(b, a + b, n - 1, fib_sig))
  );
endproperty
`endif

endmodule
