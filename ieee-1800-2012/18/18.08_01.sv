// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.8 Disabling random variables with rand_mode()

// ! TYPE: POSITIVE

module top;

  class Packet;
    rand integer source_value, dest_value;
    // ... other declarations
  endclass

  int ret;
  Packet packet_a = new;

  initial begin
    // Turn off all variables in object
    packet_a.rand_mode(0);

    // ... other code
    // Enable 'source_value'
    packet_a.source_value.rand_mode(1);
    ret = packet_a.dest_value.rand_mode();
  end

endmodule
