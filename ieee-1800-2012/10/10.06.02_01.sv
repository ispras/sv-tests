// IEEE Std 1800-2012
//   10. Assignment statements
//    10.6 Procedural continuous assignments
//     10.6.2 The force and release procedural statements

// ! TYPE: POSITIVE

module top;
  logic a, b, c, d;
  wire e;

  and and1(e, a, b, c);

  initial begin
    $monitor("%d d=%b,e=%b", $stime, d, e);
    assign d = a & b & c;
    a = 1;
    b = 0;
    c = 1;
    #10;
    force d = (a | b | c);
    force e = (a | b | c);
    #10;
    release d;
    release e;
    #10 $finish;
  end
endmodule
