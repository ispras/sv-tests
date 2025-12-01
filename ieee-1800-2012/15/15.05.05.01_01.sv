// IEEE Std 1800-2012
//   15. Interprocess synchronization and communication
//    15.5 Named events
//     15.5.5 Operations on named event variables
//      15.5.5.1 Merging events

// ! TYPE: POSITIVE

module top;

  event a, b, c;

  initial begin
    a = b;
    -> c;
    -> a; // also triggers 'b'
    -> b; // also triggers 'a'
    a = c;
    b = a;
    -> a; // also triggers 'b' and 'c'
    -> b; // also triggers 'a' and 'c'
    -> c; // also triggers 'a' and 'b'
  end

endmodule
