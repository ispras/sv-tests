// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.3 Concepts and usage

// ! TYPE: POSITIVE

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

  task exercise_bus (MyBus bus);
    int res;

    // EXAMPLE 1: restrict to low addresses
    res = bus.randomize() with {atype == low;};

    // EXAMPLE 2: restrict to address between '10' and '20'
    res = bus.randomize() with {10 <= addr && addr <= 20;};

    // EXAMPLE 3: restrict 'data' values to powers-of-two
    res = bus.randomize() with {(data & (data - 1)) == 0;};
  endtask

  MyBus bus = new;

  initial exercise_bus(bus);

endmodule
