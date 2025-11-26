// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Immediate assertions

// ! TYPE: POSITIVE

module top(input a, b, y);

  reg [2:0] count;
  reg [2:0] count1;
  reg flag;

  event event1;

  function bit myfunc(bit x, y);
    return x && y;
  endfunction

  always_comb begin
    assert (myfunc(a,b)) count1 = count + 1; else ->event1;
    assert (y == 0) else flag = 1;
  end

endmodule
