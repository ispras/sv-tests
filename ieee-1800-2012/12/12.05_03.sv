// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement

// ! TYPE: POSITIVE

module top;

  bit sig;

  initial begin
    case (sig)
      1'bz: $display("signal is floating");
      1'bx: $display("signal is unknown");
      default: $display("signal is %b", sig);
    endcase
  end

endmodule
