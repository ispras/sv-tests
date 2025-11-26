// IEEE Std 1800-2012
//   8. Classes
//    8.26 Interface classes
//     8.26.3 Type access

// ! TYPE: VARYING

module top;

  interface class IntfC;
    typedef enum { ONE, TWO, THREE } t1_t;
    pure virtual function t1_t funcC();
  endclass : IntfC

  class ClassA implements IntfC;
`ifdef NEGATIVE_TEST
    t1_t t1_i; // error, 't1_t' is not inherited from 'IntfC'
`endif
    virtual function IntfC::t1_t funcC(); // correct
      return (IntfC::ONE); // correct
    endfunction : funcC
  endclass : ClassA

endmodule
