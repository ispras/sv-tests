// IEEE Std 1800-2012
//   15. Interprocess synchronization and communication
//    15.5 Named events
//     15.5.4 Event sequencing: wait_order()

// ! TYPE: POSITIVE

module top;

  event a, b, c;
  bit success;

  initial begin
    wait_order(a, b, c) success = 1; else success = 0;
  end

endmodule
