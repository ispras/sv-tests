// IEEE Std 1800-2012
//   6. Data types
//    6.18 User-defined types

// ! TYPE: POSITIVE

interface intf_i;
  typedef int data_t;
endinterface

module sub(intf_i p);
  typedef p.data_t my_data_t;
  my_data_t data; // type of 'data' will be 'int'
                  // when connected to interface above
endmodule

module top;
  intf_i intf_inst();
  sub sub_inst(intf_inst);
endmodule
