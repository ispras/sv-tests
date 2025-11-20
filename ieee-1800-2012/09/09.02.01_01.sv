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
//     9.2.1 Initial procedures

// ! TYPE: POSITIVE

module top;

  int a;
  int memory[8:0];
  int size = 8;

  initial begin
    a = 0; // initialize 'a'
    for (int index = 0; index < size; index++)
      memory[index] = 0; // initialize 'memory' word
  end

endmodule
