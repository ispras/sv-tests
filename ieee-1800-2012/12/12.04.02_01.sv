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
//   12. Procedural programming statements
//    12.4 Conditional if–else statement
//     12.4.2 unique-if, unique0-if, and priority-if

// ! TYPE: POSITIVE

module top;

  logic [2:0] a;

  initial begin
    unique if ((a == 0) || (a == 1)) $display("0 or 1");
    else if (a == 2) $display("2");
    else if (a == 4) $display("4"); // values 3,5,6,7 cause a violation report

    priority if (a[2:1] == 0) $display("0 or 1");
    else if (a[2] == 0) $display("2 or 3");
    else $display("4 to 7"); // covers all other possible values,
                             // so no violation report
  end

endmodule
