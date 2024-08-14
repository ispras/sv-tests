/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//    16.8 Declaring sequences
//     16.8.2 Local variable formal arguments in sequence declarations

module test;

logic b;

sequence illegal_loc_var_formal (
`ifdef NEGATIVE_TEST
  output logic a,         // illegal: local must be specified with
                          // direction

  local inout logic b,

  c = 1'b0,               // default actual argument illegal for inout
  local d = expr,         // illegal: type must be specified explicitly
  local event e,          // illegal: event is a type disallowed in
                          // 16.6

  local logic f = g       // g shall not refer to the local variable
                          // below and must be resolved upward from
                          // this declaration
`endif
);
  logic g = b;
  
  ##1 g;
endsequence

endmodule
