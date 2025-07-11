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
//   17. System tasks and functions
//     17.10 Command line input
//       17.10.1 $test$plusargs (string)

// ! TYPE: POSITIVE

module test;
  initial begin
    if ($test$plusargs("HELLO"))      $display("Hello argument found.");
    if ($test$plusargs("HE"))         $display("The HE subset string is detected.");
    if ($test$plusargs("H"))          $display("Argument starting with H found.");
    if ($test$plusargs("HELLO_HERE")) $display("Long argument.");
    if ($test$plusargs("HI"))         $display("Simple greeting.");
    if ($test$plusargs("LO"))         $display("Does not match.");
  end
endmodule
