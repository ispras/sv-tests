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
//       16.2.1 Mapping of SDF delay constructs to Verilog declarations
//         In the following example, the source SDF signal sel matches the source Verilog signal,
//         and the destination SDF signal zout also matches the destination Verilog signal.
//         Therefore, the rise/fall times of 1.3 and 1.7 are annotated to the specify path.

module test;
  input sel, zout;

  specify
    (sel => zout) = 0;
  endspecify
endmodule
