// IEEE Std 1800-2012
//   15. Interprocess synchronization and communication
//    15.5 Named events
//     15.5.4 Event sequencing: wait_order()

// ! TYPE: POSITIVE

module top;

  event a, b, c;

  initial begin
    wait_order(a, b, c) else $display("Error: events out of order");
  end

endmodule
