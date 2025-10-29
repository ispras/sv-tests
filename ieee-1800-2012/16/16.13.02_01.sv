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
//    16.13 Multiclock support
//     16.13.2 Multiclocked properties

// ! TYPE: POSITIVE

module top(input clk0, clk1, clk2, sig0, sig1, b);

  sequence s1;
    @(posedge clk0) sig0 ##1 @(posedge clk1) sig1;
  endsequence

  sequence s2;
    (@(posedge clk0) sig0) and (@(posedge clk1) sig1);
   endsequence

  sequence s3;
    @(posedge clk0) sig0;
  endsequence

  sequence s4;
    @(posedge clk1) sig1;
  endsequence

  property p5;
    @(posedge clk0) s3 |=> @(posedge clk1) s2;
  endproperty

  property p6;
    @(posedge clk0) s3 |=> ((@(posedge clk1) s2) and (@(posedge clk2) s3));
  endproperty

  property p7;
    @(posedge clk0) s3 |-> @(posedge clk1) s2;
  endproperty

  property p8;
    @(posedge clk0) if (b) @(posedge clk1) s2 else @(posedge clk2) s3;
  endproperty
endmodule
