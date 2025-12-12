// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.3 Concepts and usage

// ! TYPE: VARYING

module top;

  typedef enum {low, mid, high} AddrType;

  class Bus;
    rand bit[15:0] addr;
    rand bit[31:0] data;
    constraint word_align {addr[1:0] == 2'b0;}
  endclass

  class MyBus extends Bus;
    rand AddrType atype;
    constraint addr_range
    {
      (atype == low) -> addr inside {[0:15]};
      (atype == mid) -> addr inside {[16:127]};
      (atype == high) -> addr inside {[128:255]};
    }
  endclass

  // to deliberately generate an illegal address (nonword-aligned):
  task exercise_illegal(MyBus bus, int cycles);
    int res;

    // Disable word alignment constraint.
    bus.word_align.constraint_mode(0);

    repeat (cycles) begin
      // CASE 1: restrict to small addresses.
      res = bus.randomize() with {addr[0] || addr[1];};
    end

    // Reenable word alignment constraint
    bus.word_align.constraint_mode(1);
  endtask

  MyBus bus = new;

  initial exercise_illegal(bus, 1);

endmodule
