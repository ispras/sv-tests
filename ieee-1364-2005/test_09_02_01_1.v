// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.2 Procedural assignments
//       9.2.1 Blocking procedural assignments
//         The following examples show blocking procedural assignments.

// ! TYPE: POSITIVE

module test;

  reg [0:5] rega, regb, carry, acc;
  reg [5:0] mema[5:0];
  integer address;

  initial begin
    rega = 0;
    rega[3] = 1;                // a bit-select
    rega[3:5] = 7;              // a part-select
    mema[address] = 8'hff;      // assignment to a mem element
    {carry, acc} = rega + regb; // a concatenation
  end
endmodule
