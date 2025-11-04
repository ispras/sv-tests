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
//    16.15 Disable iff resolution

// ! TYPE: POSITIVE

module m1;

  bit clk, rst1;

  default disable iff rst1;

  property p1;
    rst1 ##1 rst1;
  endproperty

  a1: assert property (@(posedge clk) p1); // property 'p1' is
                                           // defined elsewhere
  //...

  module m2;

    bit rst2;

    property p2;
      rst2 ##2 rst2;
    endproperty
    // ...
    a2: assert property (@(posedge clk) p2); // property 'p2' is
                                             // defined elsewhere
  endmodule

endmodule
