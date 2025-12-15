// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.5 Constraint blocks
//     18.5.12 Functions in constraints

// ! TYPE: POSITIVE

module top;

  class B;
    rand bit [9:0] v;
    int length;
    function int count_ones (bit [9:0] w);
      for (count_ones = 0; w != 0; w = w >> 1)
        count_ones += w & 1'b1;
    endfunction

    constraint C1 {length == count_ones(v);}

    constraint C2
    {
      length == ((v >> 9) & 1) + ((v >> 8) & 1) + ((v >> 7) & 1) +
                ((v >> 6) & 1) + ((v >> 5) & 1) + ((v >> 4) & 1) +
                ((v >> 3) & 1) + ((v >> 2) & 1) + ((v >> 1) & 1) +
                ((v >> 0) & 1);
    }
  endclass

endmodule
