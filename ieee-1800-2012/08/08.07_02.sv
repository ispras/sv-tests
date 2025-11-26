// IEEE Std 1800-2012
//   8. Classes
//    8.7 Constructors

// ! TYPE: POSITIVE

module top;

  class Packet;
    int command;
    bit[12:0] address;
    int time_requested;

    function new(int cmd = "IDLE", bit[12:0] adrs = 0, int cmd_time);
      command = cmd;
      address = adrs;
      time_requested = cmd_time;
    endfunction
  endclass

  Packet p = new("STARTUP", $random, $time);

endmodule
