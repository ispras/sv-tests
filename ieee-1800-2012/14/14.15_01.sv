// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.15 Synchronous events

// ! TYPE: POSITIVE

module top(input clk, ack_l, enable);

  module domain(input [3:0] sign, input sig1, sig2);
  endmodule

  reg [3:0] sign;
  reg sig1, sig2;
  parameter a = 1;

  domain dom(.sign(sign), .sig1(sig1), .sig2(sig2));

  clocking ram_bus @(posedge clk);
    input ack_l = clk;
    input enable;
  endclocking

  initial begin
    // Wait for the next change of signal 'ack_1' of clocking block 'ram_bus'
    @(ram_bus.ack_l);

    // Wait for the next clocking event in clocking block 'ram_bus'
    @(ram_bus);

    // Wait for the positive edge of the signal 'ram_bus.enable'
    @(posedge ram_bus.enable);

    // Wait for the falling edge of the specified 1-bit slice 'dom.sign[a]'
    @(negedge dom.sign[a]);
    // NOTE - The index 'a' is evaluated at run time.

    // Wait for either the next positive edge of 'dom.sig1' or the next change of 'dom.sig2', whichever happens first
    @(posedge dom.sig1 or dom.sig2);

    // Wait for either the negative edge of 'dom.sig1' or the positive edge of 'dom.sig2', whichever happens first
    @(negedge dom.sig1 or posedge dom.sig2);

    // Wait for the edge (either the negative edge or the positive edge, whichever happens first) of 'dom.sig1'.
    @(edge dom.sig1);

    // Or equivalently
    @(negedge dom.sig1 or posedge dom.sig1);
  end

endmodule
