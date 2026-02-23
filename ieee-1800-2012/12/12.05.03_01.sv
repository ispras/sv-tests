// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.5 Case statement
//     12.5.3 unique-case, unique0-case, and priority-case

// ! TYPE: POSITIVE

module top;

  bit [2:0] a;

  initial begin
    unique case(a) // values 3, 5, 6, 7 cause a violation report
      0, 1: $display("0 or 1");
      2: $display("2");
      4: $display("4");
    endcase

    priority casez(a) // values 4, 5, 6, 7 cause a violation report
      3'b00?: $display("0 or 1");
      3'b0??: $display("2 or 3");
    endcase

    unique0 case(a) // values 3, 5, 6, 7 do not cause a violation report
      0, 1: $display("0 or 1");
      2: $display("2");
      4: $display("4");
    endcase
  end

endmodule
