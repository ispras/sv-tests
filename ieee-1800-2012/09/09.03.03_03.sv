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
//    9.3 Block statements
//     9.3.3 Statement block start and finish times

// ! TYPE: POSITIVE

module top(input clock1, clock2);

  parameter ta = 10;
  parameter tb = 10;
  logic wa, wb;

  initial fork
    @(posedge clock1)
      begin
        #ta wa = 0;
        #ta wa = 1;
        #ta wa = 0;
      end

    @(posedge clock2)
      begin
        #tb wb = 1;
        #tb wb = 0;
        #tb wb = 1;
      end
    join

endmodule
