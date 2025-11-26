// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.5 Case statement
//       9.5.2 Constant expression in case statement
//         The following example demonstrates the usage by modeling a 3-bit priority encoder. In
//         this example, the case expression is a constant expression (1). The case items are
//         expressions (bit-selects) and are compared against the constant expression for a match.

// ! TYPE: POSITIVE

module test;

  reg [2:0] encode;

  initial begin
    case(1)
      encode[2] : $display("Select Line 2") ;
      encode[1] : $display("Select Line 1") ;
      encode[0] : $display("Select Line 0") ;
      default $display("Error: One of the bits expected ON");
    endcase
  end
endmodule
