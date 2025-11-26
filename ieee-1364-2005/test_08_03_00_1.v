// IEEE Std 1364-2005
//   8. User-defined primitives (UDPs)
//     8.3 Level-sensitive sequential UDPs
//       This description differs from a combinational UDP model in two ways. First, the output
//       identifier q has an additional reg declaration to indicate that there is an internal state
//       q. The output value of the UDP is always the same as the internal state. Second, a field
//       for the current state, which is separated by colons from the inputs and the output,
//       has been added.

// ! TYPE: POSITIVE

module test(clock, data, q);

  input clock, data;
  output q;
  latch latch(q, clock, data);
endmodule

primitive latch(q, clock, data);

  output q;
  reg q;
  input clock, data;

  table
    // clock data  q   q+
    0    1 : ? : 1 ;
    0    0 : ? : 0 ;
    1    ? : ? : - ; // - = no change
  endtable
endprimitive
