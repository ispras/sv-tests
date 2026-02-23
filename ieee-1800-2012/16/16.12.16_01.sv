// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.16 Case

// ! TYPE: VARYING

module top;

  reg a, b;

  property p_delay(logic [1:0] delay);
    case (delay)
      2'd0 : a && b;
      2'd1 : a ##2 b;
      2'd2 : a ##4 b;
      2'd3 : a ##8 b;
`ifdef NEGATIVE_TEST
      default: 0; // cause a failure if delay has 'a' or 'b' values
`endif
    endcase
  endproperty

endmodule
