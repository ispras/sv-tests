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
//   16. Backannotation using the standard delay format (SDF)
//     16.2 Mapping of SDF constructs to Verilog
//       16.2.2 Mapping of SDF timing check constructs to Verilog

module test(clk, mode, data, ntfr);
  input clk, mode, data, ntfr;

  specify
    $setuphold (posedge clk &&&  mode, data, 1, 1, ntfr); // Annotated
    $setuphold (negedge clk &&& !mode, data, 1, 1, ntfr); // Not annotated
  endspecify
endmodule
