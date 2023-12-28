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
//   8. User-defined primitives (UDPs)
//     8.6 UDP instances
//       The following example creates an instance of the D-type flip-flop d_edge_ff.

primitive d_edge_ff (q, clock, data);
  output q;
  reg q;
  input clock, data;
  table
    // clock  data      q     q+
    // obtain output on rising edge of clock
    (01)    0    :  ?  :  0  ;
    (01)    1    :  ?  :  1  ;
    (0?)    1    :  1  :  1  ;
    (0?)    0    :  0  :  0  ;
    // ignore negative edge of clock
    (?0)    ?    :  ?  :  -  ;
    // ignore data changes on steady clock
     ?     (??)  :  ?  :  -  ;
  endtable
endprimitive

module flip;
  reg q, clock, data;
  parameter p1 = 10;
  parameter p2 = 33;
  parameter p3 = 12;

  d_edge_ff #p3 d_inst (q, clock, data);
  initial begin
    data = 1;
    clock = 1;
    #(20 * p1)  $finish ;
  end
  always #p1 clock = ~clock;
  always #p2 data = ~data;
endmodule
