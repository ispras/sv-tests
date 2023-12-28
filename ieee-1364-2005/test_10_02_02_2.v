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
//   10. Tasks and functions
//     10.2 Tasks and task enabling
//       10.2.2 Task enabling and argument passing
//         The following example illustrates the use of tasks by describing
//         a traffic light sequencer.

module traffic_lights;
  reg clock, red, amber, green;
  parameter on = 1, off = 0, red_tics = 350,
            amber_tics = 30, green_tics = 200;
  // initialize colors.
  initial red = off;
  initial amber = off;
  initial green = off;
  always begin   // sequence to control the lights.
    red = on;   // turn red light on
    light(red, red_tics);         // and wait.
    green = on;  // turn green light on
    light(green, green_tics);     // and wait.
    amber = on;  // turn amber light on
    light(amber, amber_tics);     // and wait.
  end
  // task to wait for 'tics' positive edge clocks
  // before turning 'color' light off.
  task light;
  output color;
  input [31:0] tics;
  begin
    repeat (tics)  @(posedge clock);
    color = off;  // turn light off.
  end
  endtask
  always begin   // waveform for the clock.
    #100 clock = 0;
    #100 clock = 1;
  end
endmodule  // traffic_lights.
