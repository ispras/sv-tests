// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.3 Concepts and usage

// ! TYPE: POSITIVE

module top;

  class Bus;
    rand bit[15:0] addr;
    rand bit[31:0] data;
    constraint word_align {addr[1:0] == 2'b0;}
  endclass

  Bus bus = new;

  initial begin
    repeat (50) begin
      if (bus.randomize() == 1)
        $display("addr = %16h data = %h\n", bus.addr, bus.data);
      else
        $display("Randomization failed.\n");
    end
  end

endmodule
