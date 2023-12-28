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
//     9.3 Procedural continuous assignments
//       9.3.2 The force and release procedural statements
//         In this example, an and gate instance and1 is “patched” to act like an or gate by a force
//         procedural statement that forces its output to the value of its ORed inputs, and an
//         assign procedural statement of ANDed values is “patched” to act like an assign statement
//         of ORed values.

module test;
  reg a, b, c, d;
  wire e;
  and and1 (e, a, b, c);
  initial begin
    $monitor ("%d d=%b,e=%b", $stime, d, e);
    assign d = a & b & c;
    a = 1;
    b = 0;
    c = 1;
    #10;
    force d = (a | b | c);
    force e = (a | b | c);
    #10;
    release d;
    release e;
    #10 $finish;
  end
endmodule
