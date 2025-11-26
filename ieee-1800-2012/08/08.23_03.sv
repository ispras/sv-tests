// IEEE Std 1800-2012
//   8. Classes
//    8.23 Class scope resolution operator ::

// ! TYPE: VARYING

module top;

  class Outer;
    int outerProp;
    local int outerLocalProp;
    static int outerStaticProp;
    static local int outerLocalStaticProp;
    class Inner;
      function void innerMethod(Outer h);
        outerStaticProp = 0; // Legal, same as 'Outer::outerStaticProp'
        outerLocalStaticProp = 0; // Legal, nested classes may access local's in outer class
`ifdef NEGATIVE_TEST
        outerProp = 0; // Illegal, unqualified access to non-static outer
`endif
        h.outerProp = 0; // Legal, qualified access.
        h.outerLocalProp = 0; // Legal, qualified access and locals to outer class allowed.
      endfunction
    endclass
  endclass

endmodule
