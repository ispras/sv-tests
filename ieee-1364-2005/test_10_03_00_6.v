// IEEE Std 1364-2005
//   10. Tasks and functions
//     10.3 Disabling of named blocks and tasks
//       The next example is a behavioral description of a retriggerable monostable. The named event
//       retrig restarts the monostable time period. If retrig continues to occur within 250 time
//       units, then q will remain at 1.

// ! TYPE: POSITIVE

module test(retrig);

  input retrig;
  reg q;

  always begin : monostable
    #250 q = 0;
  end

  always @retrig begin
    disable monostable;
    q = 1;
  end
endmodule
