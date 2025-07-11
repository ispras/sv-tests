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
//     9.8 Block statements
//       9.8.4 Start and finish times
//         This example shows two sequential blocks, each of which will execute when its controlling
//         event occurs. Because the event controls are within a fork-join block, they execute in
//         parallel, and the sequential blocks can, therefore, also execute in parallel.

// ! TYPE: POSITIVE

module test;

  event enable_a, enable_b;
  parameter ta = 1, tb = 1;
  reg wa, wb;

  initial begin
    fork
      @enable_a
      begin
        #ta wa = 0;
        #ta wa = 1;
        #ta wa = 0;
      end
      @enable_b
      begin
        #tb wb = 1;
        #tb wb = 0;
        #tb wb = 1;
      end
    join
  end
endmodule
