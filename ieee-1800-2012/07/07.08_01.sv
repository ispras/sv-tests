// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.8 Associative arrays

// ! TYPE: POSITIVE

module top;

  class myClass;
    int id;
    function new(int id);
      this.id = id;
    endfunction
  endclass

  integer i_array[*]; // associative array of 'integer' (unspecified index)
  bit [20:0] array_b[string]; // associative array of 21-bit vector, indexed by string
  event ev_array[myClass]; // associative array of 'event' indexed by class 'myClass'

endmodule
