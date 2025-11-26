// IEEE Std 1800-2012
//   8. Classes
//    8.10 Static methods

// ! TYPE: VARYING

module top;

  class id;
    static int current = 0;
    static function int next_id();
      next_id = ++current; // OK to access static class property
    endfunction
  endclass

  class TwoTasks;
    static task t1(); // static class method with
                      // automatic variable lifetime
    endtask
`ifdef NEGATIVE_TEST
    task static t2(); // ILLEGAL: non-static class method with
                      // static variable lifetime
    endtask
`endif
  endclass

endmodule
