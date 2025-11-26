// IEEE Std 1364-2005
//   8. User-defined primitives (UDPs)
//     8.4 Edge-sensitive sequential UDPs
//       The following example describes a rising edge D flip-flop. The terms such as (01) represent
//       transitions of the input values. Specifically, (01) represents a transition from 0 to 1.
//       The first line in the table of the preceding UDP definition is interpreted as follows:
//       when clock changes value from 0 to 1 and data equals 0, the output goes to 0 no matter what
//       the current state.

// ! TYPE: POSITIVE

module test(clock, data, q);

  input clock, data;
  output q;
  d_edge_ff d_edge(q, clock, data);
endmodule

primitive d_edge_ff(q, clock, data);

  output q;
  reg q;
  input clock, data;

  table
    // clock  data      q     q+
    // obtain output on rising edge of clock
        (01)    0    :  ?  :  0  ;
        (01)    1    :  ?  :  1  ;
        (0?)    1    :  1  :  1  ;
        (0?)    0    :  0  :  0  ;
    // ignore negative edge of clock
        (?0)    ?    :  ?  :  -  ;
    // ignore data changes on steady clock
         ?     (??)  :  ?  :  -  ;
  endtable
endprimitive
