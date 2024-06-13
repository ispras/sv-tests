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
//         Table 9-2 illustrates the philosophy of intra-assignment timing controls by showing the
//         code that could accomplish the same timing effect without using intra-assignment.

module test(clk);
  input clk;
  reg a, b, temp;

  initial begin
    a =  repeat (3)
      @( posedge clk) b; // with intra-assignment construct
  end

  initial begin
    temp = b; // without intra-assignment construct
    @( posedge clk);
    @( posedge clk);
    @( posedge clk) a = temp;
  end
endmodule
