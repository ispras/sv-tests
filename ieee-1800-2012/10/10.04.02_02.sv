// IEEE Std 1800-2012
//   10. Assignment statements
//    10.4 Procedural assignments
//     10.4.2 Nonblocking procedural assignments

// ! TYPE: POSITIVE

module top;
  logic a, b, c, d, e, f;

  // blocking assignments
  initial begin
    a = #10 1; // 'a' will be assigned 1 at time 10
    b = #2 0; // 'b' will be assigned 0 at time 12
    c = #4 1; // 'c' will be assigned 1 at time 16
  end

  // nonblocking assignments
  initial begin
    d <= #10 1; // 'd' will be assigned 1 at time 10
    e <= #2 0; // 'e' will be assigned 0 at time 2
    f <= #4 1; // 'f' will be assigned 1 at time 4
  end
endmodule
