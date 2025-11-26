// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.3 Procedural continuous assignments
//       9.3.2 The force and release procedural statements
//         In this example, an and gate instance and1 is “patched” to act like an or gate by a force
//         procedural statement that forces its output to the value of its ORed inputs, and an
//         assign procedural statement of ANDed values is “patched” to act like an assign statement
//         of ORed values.

// ! TYPE: POSITIVE

module test;

  reg a, b, c, d;
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
