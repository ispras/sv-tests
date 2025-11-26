// IEEE Std 1800-2012
//   10. Assignment statements
//    10.4 Procedural assignments
//     10.4.1 Blocking procedural assignments

// ! TYPE: POSITIVE

module top;

  reg [0:5] rega, regb, carry, acc, mema;
  parameter address = 0;

  initial begin
    rega = 0;
    rega[3] = 1; // a bit-select
    rega[3:5] = 7; // a part-select
    mema[address] = 8'hff; // assignment to a mem element
    {carry, acc} = rega + regb; // a concatenation
  end

endmodule
