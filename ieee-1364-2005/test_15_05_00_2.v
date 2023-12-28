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
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       Example 1.

primitive posdff_udp(q, clock, data, preset, clear, notifier);
  output q; reg q;
  input clock, data, preset, clear, notifier;
  table
  //clock data   p c notifier state  q
  //-------------------------------------
    r    0    1 1    ?    :  ?  : 0 ;
    r    1    1 1    ?    :  ?  : 1 ;
    p    1    ? 1    ?    :  1  : 1 ;
    p    0    1 ?    ?    :  0  : 0 ;
    n    ?    ? ?    ?    :  ?  : - ;
    ?    *    ? ?    ?    :  ?  : - ;
    ?    ?    0 1    ?    :  ?  : 1 ;
    ?    ?    * 1    ?    :  1  : 1 ;
    ?    ?    1 0    ?    :  ?  : 0 ;
    ?    ?    1 *    ?    :  0  : 0 ;
    ?    ?    ? ?    *    :  ?  : x ;  // At any notifier event
       // output x
  endtable
endprimitive

module dff(q, qbar, clock, data, preset, clear);
  output q, qbar;
  input clock, data, preset, clear;
  reg notifier;
  and (enable, preset, clear);
  not (qbar, ffout);
  buf (q, ffout);
  posdff_udp (ffout, clock, data, preset, clear, notifier);

  specify

  // Define timing check specparam values
  specparam tSU = 10, tHD = 1, tPW = 25, tWPC = 10, tREC = 5;

  // Define module path delay rise and fall min:typ:max values
  specparam tPLHc = 4:6:9 , tPHLc = 5:8:11;
  specparam tPLHpc = 3:5:6 , tPHLpc = 4:7:9;

  // Specify module path delays
  (clock *> q,qbar) = (tPLHc, tPHLc);
  (preset,clear *> q,qbar) = (tPLHpc, tPHLpc);

  // Setup time : data to clock, only when preset and clear are 1
  $setup (data, posedge  clock &&& enable, tSU, notifier);

  // Hold time: clock to data, only when preset and clear are 1
  $hold (posedge clock, data &&& enable, tHD, notifier);

  // Clock period check
  $period (posedge clock, tPW, notifier);

  // Pulse width : preset, clear
  $width (negedge preset, tWPC, 0, notifier);
  $width (negedge clear, tWPC, 0, notifier);

  // Recovery time: clear or preset to clock
  $recovery (posedge preset, posedge clock, tREC, notifier);
  $recovery (posedge clear, posedge clock, tREC, notifier);

  endspecify
endmodule
