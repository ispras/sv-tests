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
//  7. Aggregate data types
//   7.9 Associative array methods
//    7.9.11 Associative array literals

// ! TYPE: POSITIVE

module top;

  // an associative array of strings indexed by 2-state integers,
  // default is "hello".
  string words [int] = '{default: "hello"};

  // an associative array of 4-state integers indexed by strings, default is –1
  integer tab [string] = '{"Peter":20, "Paul":22, "Mary":23, default:-1 };

endmodule
