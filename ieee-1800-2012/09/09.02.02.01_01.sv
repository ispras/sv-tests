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
//    9.2 Structured procedures
//     9.2.2 Always procedures
//      9.2.2.1 General purpose always procedure

// ! TYPE: VARYING

module top;

  reg areg;
  parameter half_period = 5;

`ifdef NEGATIVE_TEST
  always areg = ~areg;
`endif

  always #half_period areg = ~areg;

endmodule
