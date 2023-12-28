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
//   12. Hierarchical structures
//     12.5 Hierarchical names
//       The code in this example defines a hierarchy of module instances and named blocks.

module mod (in);
  input in;

  always @(posedge in) begin : keep
  reg hold;
    hold = in;
  end
endmodule

module cct (stim1, stim2);
  input stim1, stim2;

  // instantiate mod
  mod amod(stim1), bmod(stim2);
endmodule

module wave;
  reg stim1, stim2;
  cct a(stim1, stim2); // instantiate cct

  initial begin :wave1
    #100 fork :innerwave
      reg hold;
    join
    #150 begin
      stim1 = 0;
    end
  end
endmodule
