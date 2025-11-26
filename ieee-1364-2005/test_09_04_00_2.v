// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.4 Conditional statement
//       Because the else part of an if-else is optional, there can be confusion when an else
//       is omitted from a nested if sequence. This is resolved by always associating the else
//       with the closest previous if that lacks an else. In the example below, the else goes
//       with the inner if, as shown by indentation.

// ! TYPE: POSITIVE

module test;

  reg index, rega, regb, result;

  initial begin
  if (index > 0)
    if (rega > regb)
      result = rega;
    else // else applies to preceding if
      result = regb;
  end
endmodule
