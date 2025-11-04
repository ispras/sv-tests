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
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

module top;
  (* fsm_state *) logic [7:0] state1;
  (* fsm_state=1 *) logic [3:0] state2, state3;
  logic [3:0] reg1; // 'reg1' does NOT have 'fsm_state' set
  (* fsm_state=0 *) logic [3:0] reg2; // nor does 'reg2'
endmodule