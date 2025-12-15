// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.17 Random sequence generation—randsequence
//     18.17.7 Value passing between productions

// ! TYPE: POSITIVE

module top;

  int flag;
  initial randsequence(bin_op)
    void bin_op : value operator value // 'void' type is optional
                  {$display("%s %b %b", operator, value[1], value[2]);};
    bit [7:0] value : {return $urandom;};
    string operator : add := 5 {return "+";}
                      | dec := 2 {return "-";}
                      | mult := 1 {return "*";};
    add : {};
    dec : {};
    mult : {};
  endsequence

endmodule
