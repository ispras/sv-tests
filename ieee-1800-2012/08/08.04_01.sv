// IEEE Std 1800-2012
//   8. Classes
//    8.4 Objects (class instance)

// ! TYPE: POSITIVE

module top;

  class obj_example;
  endclass

  task task1(integer a, obj_example myexample);
    if (myexample == null) myexample = new;
  endtask

endmodule
