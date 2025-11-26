// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement
//     12.5.2 Constant expression in case statement

// ! TYPE: POSITIVE

module top;

  logic [2:0] encode;

  initial begin
    case (1)
      encode[2]: $display("Select Line 2");
      encode[1]: $display("Select Line 1");
      encode[0]: $display("Select Line 0");
      default $display("Error: One of the bits expected ON");
    endcase
  end

endmodule
