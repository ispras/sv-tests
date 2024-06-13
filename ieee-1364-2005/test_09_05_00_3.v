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
//   9. Behavioral modeling
//     9.5 Case statement
//       The following example shows another way to use a case statement to detect x and z values.

module test(sig);
  input sig;

  initial begin
    case (sig)
      1'bz: $display ("signal is floating");
      1'bx: $display ("signal is unknown");
      default: $display ("signal is %b", sig);
    endcase
  end
endmodule
