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
//          The following is an example of a repeat event control as the intra-assignment delay of
//          a nonblocking assignment. In this example, the value of data is evaluated when the
//          assignment is encountered. After five occurrences of posedge clk, a is assigned
//          the value of data.

module test(clk);
  input clk;
  reg a, data;

  initial begin
    a <= repeat (5) @( posedge clk) data;
  end
endmodule
