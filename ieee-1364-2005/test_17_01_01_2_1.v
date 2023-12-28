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
//     17.1 Display system tasks
//       17.1.1 The display and write tasks
//         17.1.1.2 Format specifications

module disp;
  reg [31:0] rval;
  pulldown (pd);
  initial begin
    rval = 101;
    $display ("rval = %h hex %d decimal",rval,rval);
    $display ("rval = %o octal\nrval = %b bin",rval,rval);
    $display ("rval has %c ascii character value",rval);
    $display ("pd strength value is %v",pd);
    $display ("current scope is %m");
    $display ("%s is ascii value for 101",101);
    $display ("simulation time is %t", $time);
  end
endmodule
