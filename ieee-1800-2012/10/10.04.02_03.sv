// IEEE Std 1800-2012
//   10. Assignment statements
//    10.4 Procedural assignments
//     10.4.2 Nonblocking procedural assignments

// ! TYPE: POSITIVE

module top;
  logic a, b;

  initial begin
    a = 0;
    b = 1;
    a <= b; // evaluates, schedules,
    b <= a; // and executes in two steps
  end

  initial begin
    $monitor ($time, ,"a = %b b = %b", a, b);
    #100 $finish;
  end

endmodule
