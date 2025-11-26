// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

// ! TYPE: POSITIVE

module top(input b, c);

reg a;

function f(bit v);
  p: assert #0 (v);
  // ...
endfunction

always_comb begin: myblk
  a = b || f(c);
end

endmodule
