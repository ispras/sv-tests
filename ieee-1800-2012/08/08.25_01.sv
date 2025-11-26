// IEEE Std 1800-2012
//   8. Classes
//    8.25 Parameterized classes

// ! TYPE: POSITIVE

module top;

  class vector #(int size = 1);
    bit [size-1:0] a;
  endclass

  class stack #(type T = int);
    local T items[];
    task push(T a);
    endtask
    task pop(ref T a);
    endtask
  endclass

  vector #(10) vten; // object with 'vector' of size 10
  vector #(.size(2)) vtwo; // object with 'vector' of size 2
  typedef vector #(4) Vfour; // Class with 'vector' of size 4

  stack is; // default: a 'stack' of ints
  stack #(bit[1:10]) bs; // a 'stack' of 10-bit vector
  stack #(real) rs; // a 'stack' of 'real' numbers

endmodule
