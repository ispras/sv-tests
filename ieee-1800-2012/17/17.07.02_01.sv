// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables
//     17.7.2 Checker variable randomization with assumptions

// ! TYPE: POSITIVE

function f1(x, y);
  return x & y;
endfunction

function f2(x, y);
  return x | y;
endfunction

function f3(x, y);
  return x & y;
endfunction

function f4(x, y);
  return x | y;
endfunction

module top;

  bit mclk, v1, v2;

  checker c1(bit fclk, bit a, bit b);
    default clocking @ (posedge fclk); endclocking

    checker c2(bit bclk, bit x, bit y);
      default clocking @ (posedge bclk); endclocking
      rand bit m, n;
      u1: assume property (f1(x,m));
      u2: assume property (f2(y,n));
    endchecker

    rand bit q, r;
    c2 B1(fclk, q+r, r);
    always_ff @ (posedge fclk)
      r <= a || q; // assignment makes 'r' inactive
    u3: assume property (f3(a, q));
    u4: assume property (f4(b, r));
  endchecker

  c1 F1(mclk, v1, const'(v2));

endmodule
