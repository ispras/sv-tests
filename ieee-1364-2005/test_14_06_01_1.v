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
//   14. Specify blocks
//     14.6 Detailed control of pulse filtering behavior
//       14.6.1 Specify block control of pulse limit values
//         In the following example, the path (clk=>q) acquires a reject limit of 2 and an error
//         limit of 9, as defined by the first PATHPULSE$ declaration. The paths (clr*>q) and
//         (pre*>q) receive a reject limit of 0 and an error limit of 4, as specified by the second
//         PATHPULSE$ declaration. The path (data=>q) is not explicitly defined in any of the
//         PATHPULSE$ declarations; therefore, it acquires reject and error limit of 3, as defined
//         by the last PATHPULSE$ declaration.

// ! TYPE: POSITIVE

module test(clk, data, clr, pre, q);

  input clk, data, clr, pre;
  output q;

  specify
    (clk => q) = 12;
    (data => q) = 10;
    (clr, pre *> q) = 4;
    specparam
      PATHPULSE$clk$q = (2,9),
      PATHPULSE$clr$q = (0,4),
      PATHPULSE$ = 3;
  endspecify
endmodule
