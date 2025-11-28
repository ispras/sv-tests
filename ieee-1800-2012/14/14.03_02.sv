// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.3 Clocking block declaration

// ! TYPE: POSITIVE

module top(input clock1, data, ready, enable, addr, output ack);

  module mem(output enable);
  endmodule

  reg en_reg;
  mem mem1(.enable(en_reg));

  clocking bus @(posedge clock1);
    default input #10ns output #2ns;
    input data, ready, enable = top.mem1.enable;
    output negedge ack;
    input #1step addr;
  endclocking

endmodule
