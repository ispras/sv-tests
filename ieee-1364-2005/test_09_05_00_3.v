// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.5 Case statement
//       The following example shows another way to use a case statement to detect x and z values.

// ! TYPE: POSITIVE

module test(sig);

  input sig;

  initial begin
    case (sig)
      1'bz: $display("signal is floating");
      1'bx: $display("signal is unknown");
      default: $display("signal is %b", sig);
    endcase
  end
endmodule
