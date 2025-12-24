// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.2 Display system tasks
//     21.2.1 The display and write tasks
//      21.2.1.7 Assignment pattern format

// ! TYPE: POSITIVE

module top;

  typedef enum {ON, OFF} switch_e;
  typedef struct {switch_e sw; string s;} pair_t;
  pair_t va[int] = '{10: '{OFF, "switch10"}, 20: '{ON, "switch20"}};

  initial begin
    $display("va[int] = %p;", va);
    $display("va[int] = %0p;", va);
    $display("va[10].s = %p;", va[10].s);
  end

endmodule
