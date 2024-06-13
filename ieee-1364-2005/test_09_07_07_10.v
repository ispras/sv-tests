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
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//          The following is an example of a repeat event control with expressions containing
//          operations to specify both the number of event occurrences and the event that
//          is counted. In this example, the value of data is evaluated when the assignment is
//          encountered. After the sum of the positive edges of phi1 and the negative edges of phi2
//          equals the sum of a and b, a is assigned the value of data. Even if posedge phi1 and
//          negedge phi2 occurred at the same simulation time, each will be detected separately.

module test(phi1, phi2, data);
  input phi1, phi2, data;
  reg a, b, num;

  initial begin
    a <= repeat (a+b) @( posedge phi1 or negedge phi2) data;
  end
endmodule
