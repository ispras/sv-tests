// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.8 Upwards name referencing
//     23.8.1 Task and function name resolution

// ! TYPE: POSITIVE

module top;
  task t;
    int x;
    x = f(1); // valid reference to function 'f' in '$unit' scope
  endtask

  function int f(int y);
    return y + 1;
  endfunction
endmodule
