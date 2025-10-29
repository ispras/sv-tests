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
//     16.13.3 Clock flow

// ! TYPE: POSITIVE

module top(input c, x, y, d, z, v, w);

  property s1;
    @(c) x |=> @(c) y ##1 @(d) z;
  endproperty

  property s2;
    @(c) x |=> y ##1 @(d) z;
  endproperty

  property s3;
    @(c) x ##1 y |=> @(d) z;
  endproperty

  property s4;
    @(c) x |=> y |=> @(d) z;
  endproperty

  property s5;
    @(c) x ##0 y |=> @(d) z;
  endproperty

  property s6;
    @(c) x |-> y |=> @(d) z;
  endproperty

  property s7;
    @(c) w ##1 (x ##1 @(d) y) |=> z;
  endproperty

  property s8;
    @(c) v |=> (w ##1 @(d) x) and (y ##1 z);
  endproperty
endmodule
